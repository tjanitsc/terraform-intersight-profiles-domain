resource "intersight_server_profile" "server" {
  name   = "tf_server"
  action = "No-op"
  target_platform = "Standalone"
}

#variable "organization" {
#   type = string
#   description = "<value for organization>"
#}
