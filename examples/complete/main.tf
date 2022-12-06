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
}

#variable "organization" {
#   type = string
#   description = "<value for organization>"
#}
