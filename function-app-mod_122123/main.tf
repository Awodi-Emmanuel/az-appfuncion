# resource "azurerm_function_app" "this" {
#   name                      = var.function_app
#   location                  = var.location
#   resource_group_name       = var.resource_group_name
#   app_service_plan_id        = var.app_service_plan_id
#   storage_connection_string = var.storage_connection_string
# }

resource "azurerm_app_service_plan" "this" {
  name                = var.app_service_plan_name
  location            = var.location
  resource_group_name = var.resource_group_name
  kind                = "FunctionApp"
  reserved            = true

  sku {
    tier = "Dynamic"
    size = "Y1"
  }
}

resource "azurerm_storage_account" "this" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
