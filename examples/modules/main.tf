module "name-generator" {
  source         = "achavacloud/name-generator/azure"
  org_prefix     = var.org_prefix
  project        = var.project
  resource_type  = var.resource_type
  suffix         = var.suffix
  env            = var.env
}
