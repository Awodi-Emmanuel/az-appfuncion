resource "azurerm_windows_function_app" "this" {
  name = var.name 
  resource_group_name = var.azure_resource_group_name
  storage_account_name = var.storage_account_name
  location = var.location
  storage_account_access_key = var.storage_account_access_key
  https_only = var.https_only
  service_plan_id = var.service_plan

  site_config {
    always_on = var.always_on
  }

  app_settings = {
    "APPINSIGHTS_INSTRUMENTATIONKEY" = var.APPINSIGHTS_INSTRUMENTATIONKEY
    "APPLICATIONINSIGHT_CONNECTION_STRING" = var.APPLICATIONINSIGHTS_CONNECTION_STRING

  }

  tags = local.default_tags
}