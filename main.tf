# Declare the Azure landing zones Terraform module
# and provide a base configuration.

module "caf-enterprise-scale" {
  source  = "Azure/caf-enterprise-scale/azurerm"
  version = "4.2.0"

  default_location = var.default_location

  providers = {
    azurerm              = azurerm
    azurerm.connectivity = azurerm
    azurerm.management   = azurerm
  }

  root_parent_id = data.azurerm_client_config.core.tenant_id
  root_id        = var.root_id
  root_name      = var.root_name
  deploy_demo_landing_zones = true
}
