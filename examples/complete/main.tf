resource "intersight_server_profile" "server1" {
  name   = "tf_server1"
  action = "No-op"
  target_platform = "Standalone"
  src_template {
    moid = "638f438e77696e2d3015928a"
    object_type = "server.ProfileTemplate"
  }
  dynamic "policy_bucket" {
    for_each = [for s in var.policy_bucket : s if s != null]
    content {
      moid        = policy_bucket.value.moid
      object_type = policy_bucket.value.object_type
    }
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

variable "policy_bucket" {
  default     = [
  {
      # BIOS Policy
      moid        = module.bios_example.moid
      object_type = "bios.Policy"
    },
    {
      # Boot Policy
      moid        = module.boot_uefi_local_disk.moid
      object_type = "boot.PrecisionPolicy"
    },
    {
      # IPMI over LAN Policy
      moid        = module.ipmi_example.moid
      object_type = "ipmioverlan.Policy"
    },
    {
      # IMC Access Policy
      moid        = module.imc_access_example.moid
      object_type = "access.Policy"
    },
    {
      # LAN Connectivity Policy
      moid        = module.lan_connectivity_example.moid
      object_type = "vnic.LanConnectivityPolicy"
    },
    {
      # Local user Policy
      moid        = module.local_user_policy_example.moid
      object_type = "iam.EndPointUserPolicy"
    },
    {
      # SAN Connectivity Policy
      moid        = module.san_connectivity.moid
      object_type = "vnic.SanConnectivityPolicy"
    },
    {
      # SD Card Policy
      moid        = module.sd_card_example.moid
      object_type = "sdcard.Policy"
    },
    {
      # Serial over LAN Policy
      moid        = module.sol_example.moid
      object_type = "sol.Policy"
    },
    {
      # SNMP Policy
      moid        = module.snmp_example.moid
      object_type = "snmp.Policy"
    },
    # {
    #   # Storage Policy
    #   moid        = module.storage_example.moid
    #   object_type = "storage.StoragePolicy"
    # },
    {
      # Syslog Policy
      moid        = module.syslog_example.moid
      object_type = "syslog.Policy"
    },
    {
      # Virtual KVM Policy
      moid        = module.kvm_example.moid
      object_type = "kvm.Policy"
    },
    {
      # Virtual Media Policy
      moid        = module.vmedia_example_1.moid
      object_type = "vmedia.Policy"
    }
    ]
  description = "List of Policies to Assign to the Profile."
  type        = list(map(string))
}  
 


#variable "organization" {
#   type = string
#   description = "<value for organization>"
#}
