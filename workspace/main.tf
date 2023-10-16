resource "azurerm_resource_group" "this" {
  name     = var.azure_resource_name
  location = var.location
}

resource "azurerm_storage_account" "this" {
  name                     = var.function-app
  resource_group_name      = azurerm_resource_group.this.name
  location                 = azurerm_resource_group.this.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}

resource "azurerm_app_service_plan" "this" {
  name                = var.test-service-plan
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name

  sku {
    tier = var.tier
    size = var.size
  }
}

resource "azurerm_function_app" "this" {
  name                       = var.azure_function_app
  location                   = azurerm_resource_group.this.location
  resource_group_name        = azurerm_resource_group.this.name
  app_service_plan_id        = azurerm_app_service_plan.this.id
  storage_account_name       = azurerm_storage_account.this.name
  storage_account_access_key = azurerm_storage_account.this.primary_access_key
}