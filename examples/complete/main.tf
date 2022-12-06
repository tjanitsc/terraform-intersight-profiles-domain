resource "intersight_server_profile" "server" {
  name   = "tf_server"
  action = "No-op"
  tags {
    key   = "server"
    value = "demo"
  }
  organization {
    object_type = "default"
  }
  
  target_platform = var.sp_target_platform
  action          = var.sp_action
}

variable "sp_target_platform" {
  type        = string
  description = "The platform for which the server profile is applicable. It can either be a server that is operating in standalone mode or which is attached to a Fabric Interconnect managed by Intersight."
  default     = "Standalone" # Options: Standalone, FIAttached
}

variable "sp_action" {
  type        = string
  description = "service profile operations"
  default     = "No-op" # Options: # Deploy, Unassign
}

#variable "organization" {
#   type = string
#   description = "<value for organization>"
#}
