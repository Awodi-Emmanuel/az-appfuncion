provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "this" {
  name     = "example-resources"
  location = "East US"
}

module "function-app-mod" {
  source                    = "../modules/function-app-mod"
  function_app              = "myfunctionapp"
  location                  = "East US"
  resource_group_name       = "example-resources"
  app_service_plan_id       = azurerm_app_service_plan.this.id
  storage_connection_string = azurerm_storage_account.this.primary_connection_string
}


resource "azurerm_app_service_plan" "example" {
  name                = "example-appserviceplan"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  kind                = "FunctionApp"
  reserved            = true

  sku {
    tier = "Dynamic"
    size = "Y1"
  }
}

resource "azurerm_storage_account" "example" {
  name                     = "examplestorageaccount"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
