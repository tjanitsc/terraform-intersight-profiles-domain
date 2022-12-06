resource "intersight_server_profile" "server" {
  name   = "tf_server"
  action = "No-op"
  target_platform = "Standalone"
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
