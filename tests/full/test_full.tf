module "main" {
  source       = "../.."
  description  = "${var.name} Domain Profile."
  name         = var.name
  organization = "terratest"
}
