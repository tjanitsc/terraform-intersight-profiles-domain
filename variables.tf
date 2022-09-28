#____________________________________________________________
#
# UCS Domain Cluster Profile Variables Section.
#____________________________________________________________

variable "action" {
  default     = "No-op"
  description = "Action to Perform on the Switch Profile Assignment.  Options are {Deploy|No-op|Unassign}."
  type        = string
}

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "domain_template" {
  default     = ""
  description = "NOT SUPPORTED TODAY.  The Name of the Domain Template to Assign."
  type        = string
}

variable "domain_type" {
  default     = "instance"
  description = <<-EOT
    Defines the type of the profile. Accepted values are:
    * instance
    * template
  EOT
  type        = string
}

variable "name" {
  default     = "default"
  description = "Name for the Policy."
  type        = string
}

variable "organization" {
  default     = "default"
  description = "Intersight Organization Name to Apply Policy to.  https://intersight.com/an/settings/organizations/."
  type        = string
}

variable "policy_bucket" {
  default     = []
  description = "List of Policies to Assign to the Profile."
  type        = list(map(string))
}

variable "serial_numbers" {
  default     = []
  description = "List of Serial Numbers for the Domain Profile.  Be sure to put the Serial Numbers in Order for A versus B."
  type        = list(string)
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
