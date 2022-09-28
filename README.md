<!-- BEGIN_TF_DOCS -->
# Terraform Intersight UCS Domain Profiles
Manages Intersight UCS Domain Profiles

Location in GUI:
`Profiles` » `UCS Domain Profiles` » `Create UCS Domain Profiles`

## Example

### main.tf
```hcl
module "domain_profile" {
  source  = "terraform-cisco-modules/profiles-domain/intersight"
  version = ">= 1.0.1"

  action       = "No-op"
  description  = "default Domain Profile"
  name         = "default"
  organization = "default"
}

```

### provider.tf
```hcl
terraform {
  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = ">=1.0.32"
    }
  }
  required_version = ">=1.3.0"
}

provider "intersight" {
  apikey    = var.apikey
  endpoint  = var.endpoint
  secretkey = var.secretkey
}
```

### variables.tf
```hcl
variable "apikey" {
  description = "Intersight API Key."
  sensitive   = true
  type        = string
}

variable "endpoint" {
  default     = "https://intersight.com"
  description = "Intersight URL."
  type        = string
}

variable "secretkey" {
  description = "Intersight Secret Key."
  sensitive   = true
  type        = string
}
```

## Environment Variables

### Terraform Cloud/Enterprise - Workspace Variables
- Add variable apikey with value of [your-api-key]
- Add variable secretkey with value of [your-secret-file-content]

### Linux
```bash
export TF_VAR_apikey="<your-api-key>"
export TF_VAR_secretkey=`cat <secret-key-file-location>`
```

### Windows
```bash
$env:TF_VAR_apikey="<your-api-key>"
$env:TF_VAR_secretkey="<secret-key-file-location>""
```


## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.3.0 |
| <a name="requirement_intersight"></a> [intersight](#requirement\_intersight) | >=1.0.32 |
## Providers

| Name | Version |
|------|---------|
| <a name="provider_intersight"></a> [intersight](#provider\_intersight) | 1.0.32 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_apikey"></a> [apikey](#input\_apikey) | Intersight API Key. | `string` | n/a | yes |
| <a name="input_endpoint"></a> [endpoint](#input\_endpoint) | Intersight URL. | `string` | `"https://intersight.com"` | no |
| <a name="input_secretkey"></a> [secretkey](#input\_secretkey) | Intersight Secret Key. | `string` | n/a | yes |
| <a name="input_action"></a> [action](#input\_action) | Action to Perform on the Switch Profile Assignment.  Options are {Deploy\|No-op\|Unassign}. | `string` | `"No-op"` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_domain_template"></a> [domain\_template](#input\_domain\_template) | NOT SUPPORTED TODAY.  The Name of the Domain Template to Assign. | `string` | `""` | no |
| <a name="input_domain_type"></a> [domain\_type](#input\_domain\_type) | Defines the type of the profile. Accepted values are:<br>* instance<br>* template | `string` | `"instance"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"default"` | no |
| <a name="input_organization"></a> [organization](#input\_organization) | Intersight Organization Name to Apply Policy to.  https://intersight.com/an/settings/organizations/. | `string` | `"default"` | no |
| <a name="input_policy_bucket"></a> [policy\_bucket](#input\_policy\_bucket) | List of Policies to Assign to the Profile. | `list(map(string))` | `[]` | no |
| <a name="input_serial_numbers"></a> [serial\_numbers](#input\_serial\_numbers) | List of Serial Numbers for the Domain Profile.  Be sure to put the Serial Numbers in Order for A versus B. | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_domain_profile"></a> [domain\_profile](#output\_domain\_profile) | UCS Domain Cluster Profile Managed Object ID (moid). |
## Resources

| Name | Type |
|------|------|
| [intersight_fabric_switch_cluster_profile.domain_profile](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_switch_cluster_profile) | resource |
| [intersight_fabric_switch_profile.switch_profiles](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_switch_profile) | resource |
| [intersight_network_element_summary.fis](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/data-sources/network_element_summary) | data source |
| [intersight_organization_organization.org_moid](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/data-sources/organization_organization) | data source |
<!-- END_TF_DOCS -->