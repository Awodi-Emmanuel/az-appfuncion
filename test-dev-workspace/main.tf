resource "azurerm_resource_group" "this" {
    name = var.azure_resource_group_name
    location = var.location

    tags = local.default_tags
}

module "az-functions-mod" {
    source = "../modules/az-functions-mod"

    name = var.function_app
    azure_resource_group_name = var.azurerm_resource_group.this.name
    storage_account_name = var.storage_account_name
    service_plan = var.service_plan
    storage_account_access_key = var.storage_account_access_key
    location = var.location
    always_on = var.always_on
    APPINSIGHTS_INSTRUMENTATIONKEY = var.APPINSIGHTS_INSTRUMENTATIONKEY
    APPLICATIONINSIGHTS_CONNECTION_STRING = var.APPLICATIONINSIGHT_CONNECTION_STRING

    # app_settings = {

    # "APPINSIGHTS_INSTRUMENTATIONKEY"                  = azurerm_application_insights.<app>.instrumentation_key
    # "APPLICATIONINSIGHTS_CONNECTION_STRING"           = azurerm_application_insights.<app>.connection_string
    #  "APPINSIGHTS_PORTALINFO"                         =         "ASP.NET"
    #   "APPINSIGHTS_PROFILERFEATURE_VERSION"           =        "1.0.0"
    # "ApplicationInsightsAgent_EXTENSION_VERSION"      =          "~2"
    # }
    
    environment = var.environment
    application_name = var.application_name

}