resource "intersight_server_profile" "server1" {
  name   = "tf_server1"
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
