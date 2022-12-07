resource "intersight_server_profile" "server1" {
  name   = "tf_server1"
  action = "No-op"
  target_platform = "Standalone"
  src_template {
    moid = "638f438e77696e2d3015928a"
  }
  organization {
    object_type = "organization.Organization"
    moid        = data.intersight_organization_organization.org_data.results[0].moid
  }
}

resource "intersight_server_profile" "server2" {
  name   = "tf_server2"
  action = "No-op"
  target_platform = "Standalone"
  #src_template = "Standalone_ServerProfileTemplate"
  organization {
    object_type = "organization.Organization"
    moid        = data.intersight_organization_organization.org_data.results[0].moid
  }
}

resource "intersight_server_profile" "server3" {
  name   = "tf_server3"
  action = "No-op"
  target_platform = "Standalone"
  #src_template = "Standalone_ServerProfileTemplate"
  organization {
    object_type = "organization.Organization"
    moid        = data.intersight_organization_organization.org_data.results[0].moid
  }
}

resource "intersight_server_profile" "server4" {
  name   = "tf_server4"
  action = "No-op"
  target_platform = "Standalone"
  #src_template = "Standalone_ServerProfileTemplate"
  organization {
    object_type = "organization.Organization"
    moid        = data.intersight_organization_organization.org_data.results[0].moid
  }
}

resource "intersight_server_profile" "server5" {
  name   = "tf_server5"
  action = "No-op"
  target_platform = "Standalone"
  #src_template = "Standalone_ServerProfileTemplate"
  organization {
    object_type = "organization.Organization"
    moid        = data.intersight_organization_organization.org_data.results[0].moid
  }
}

data "intersight_organization_organization" "org_data" {
  name = var.org_name
}

variable "org_name" {
  type        = string
  description = "Name of the Org where you want to create the resource"
  default     = "default"
}

#variable "organization" {
#   type = string
#   description = "<value for organization>"
#}
