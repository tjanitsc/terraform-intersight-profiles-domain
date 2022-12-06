resource "intersight_server_profile" "server" {
  name   = "tf_server"
  action = "No-op"
  target_platform = "Standalone"
  organization {
    object_type = "organization.Organization"
    moid        = var.organization
  }
}

variable "organization" {
   type = string
   description = "<value for organization>"
}
