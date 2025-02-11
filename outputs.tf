#____________________________________________________________
#
# Collect the moid of the UCS Domain Cluster Profile
#____________________________________________________________

output "domain_profile" {
  description = "UCS Domain Cluster Profile Managed Object ID (moid)."
  value = {
    name = intersight_fabric_switch_cluster_profile.domain_profile.name
    moid = intersight_fabric_switch_cluster_profile.domain_profile.moid
    A = length(intersight_fabric_switch_profile.switch_profiles
    ) > 0 ? intersight_fabric_switch_profile.switch_profiles["A"].moid : ""
    B = length(intersight_fabric_switch_profile.switch_profiles
    ) > 0 ? intersight_fabric_switch_profile.switch_profiles["B"].moid : ""
  }
}
