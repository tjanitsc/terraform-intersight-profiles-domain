resource "intersight_server_profile" "server1" {
  name   = "tf_server1"
  action = "No-op"
  target_platform = "Standalone"
  src_template {
    moid = "638f438e77696e2d3015928a"
    object_type = "server.ProfileTemplate"
  }
  boot_order_policy {
      moid        = "638f0d476275722d30618675"
      object_type = "boot.PrecisionPolicy"
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
      moid        = "638f0d3e6275722d30618579"
      object_type = "bios.Policy"
    },
    {
      # Boot Policy
      moid        = "638f0d476275722d30618675"
      object_type = "boot.PrecisionPolicy"
    },
    {
      # IPMI over LAN Policy
      moid        = "638f0d4a6275722d306186bb"
      object_type = "ipmioverlan.Policy"
    },
    {
      # LAN Connectivity Policy
      moid        = "638f0d7e7b132b5cc3afe2e9"
      object_type = "vnic.LanConnectivityPolicy"
    },
    {
      # Local user Policy
      moid        = "638f0d496275722d30618692"
      object_type = "iam.EndPointUserPolicy"
    },
    {
      # SAN Connectivity Policy
      moid        = "638f0da37b132b5cc3afe78e"
      object_type = "vnic.SanConnectivityPolicy"
    },
    {
      # SD Card Policy
      moid        = "638f0d55656f6e2d305a11f1"
      object_type = "sdcard.Policy"
    },
    {
      # Serial over LAN Policy
      moid        = "638f0d516275722d30618771"
      object_type = "sol.Policy"
    },
    {
      # SNMP Policy
      moid        = "638f0d506275722d30618764"
      object_type = "snmp.Policy"
    },
    # {
    #   # Storage Policy
    #   moid        = module.storage_example.moid
    #   object_type = "storage.StoragePolicy"
    # },
    {
      # Syslog Policy
      moid        = "638f0d536275722d306187ed"
      object_type = "syslog.Policy"
    },
    {
      # Virtual KVM Policy
      moid        = "638f0d4b6275722d306186dc"
      object_type = "kvm.Policy"
    },
    {
      # Virtual Media Policy
      moid        = "638f0d526275722d306187a3"
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
