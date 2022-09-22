#____________________________________________________________
#
# Intersight Organization Data Source
# GUI Location: Settings > Settings > Organizations > {Name}
#____________________________________________________________

data "intersight_organization_organization" "org_moid" {
  name = var.organization
}

data "intersight_network_element_summary" "fis" {
  for_each = { for s in var.serial_numbers : s => s }
  serial   = each.value
}


#____________________________________________________________
#
# Intersight UCS Domain Cluster Profile Resource
# GUI Location: Profiles > UCS Domain Profile > Create
#____________________________________________________________

resource "intersight_fabric_switch_cluster_profile" "domain_profile" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  description = var.description != "" ? var.description : "${var.name} Domain Profile."
  name        = var.name
  type        = var.domain_type
  organization {
    moid        = data.intersight_organization_organization.org_moid.results[0].moid
    object_type = "organization.Organization"
  }
  dynamic "src_template" {
    for_each = toset(compact([var.domain_src_template]))
    content {
      moid = src_template.value.moid
    }
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}


#____________________________________________________________
#
# Intersight UCS Domain Profile - Switch Resource
# GUI Location: Profiles > UCS Domain Profile > Create
#____________________________________________________________

resource "intersight_fabric_switch_profile" "switch_profiles" {
  depends_on = [
    data.intersight_network_element_summary.fis,
    intersight_fabric_switch_cluster_profile.domain_profile
  ]
  for_each    = toset(["A", "B"])
  action      = var.action
  description = "${var.name} Switch Profile ${each.value}."
  name        = "${var.name}-${each.value}"
  type        = var.domain_type
  switch_cluster_profile {
    moid = intersight_fabric_switch_cluster_profile.domain_profile.moid
  }
  dynamic "assigned_switch" {
    for_each = { for s in [each.value] : s => s if length(var.serial_numbers) > 0 }
    content {
      moid = length(
        regexall("A", assigned_switch.value)
        ) > 0 ? data.intersight_network_element_summary.fis[element(var.serial_numbers, 0)].results[0].moid : length(
        regexall("B", assigned_switch.value)
      ) > 0 ? data.intersight_network_element_summary.fis[element(var.serial_numbers, 1)].results[0].moid : ""
    }
  }
  dynamic "policy_bucket" {
    for_each = { for k, v in var.policy_bucket : k => v }
    content {
      moid        = policy_bucket.value.moid
      object_type = policy_bucket.value.object_type
    }
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}
