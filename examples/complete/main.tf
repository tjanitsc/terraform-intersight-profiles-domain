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
  
  target_platform = "Standalone"
  action          = "No-op"
}

#variable "organization" {
#   type = string
#   description = "<value for organization>"
#}
