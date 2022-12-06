resource "intersight_server_profile" "server" {
  name   = "tf_server"
  action = "No-op"
  target_platform = "Standalone"
  organization {
    object_type = "organization.Organization"
    moid        = data.intersight_organization_organization.org_data.results[0].moid
  }
}
#variable "organization" {
#   type = string
#   description = "<value for organization>"
#}
