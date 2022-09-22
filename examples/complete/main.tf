module "domain_profile" {
  source  = "terraform-cisco-modules/profiles-domain/intersight"
  version = ">= 1.0.1"

  action       = "No-op"
  description  = "default Domain Profile"
  name         = "default"
  organization = "default"
}

