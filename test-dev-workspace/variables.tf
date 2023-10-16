variable "azure_resource_group_name" {
    type = string
    default = "rg-t-dev"
  
}

variable "location" {
  type = string
  default = "West Europe"
}

variable "function_app" {
  type = string
  default = "test-func-app"
}

variable "storage_account_name" {
  type = string
  default = "storage-t"
}

variable "always_on" {
  type = bool
  default = true
}

variable "environment" {
  type = string
  default = "staging"
}

variable "application_name" {
  type = string
  default = "settlement"
}

variable "APPINSIGHTS_INSTRUMENTATIONKEY" {
  type = string
  default = "my-appsetting"
  
}

variable "APPLICATIONINSIGHT_CONNECTION_STRING" {
  type = string
  default = "testing-string"
  
}

variable "service_plan" {
  type = string
  default = "S1"
  
}

variable "storage_account_access_key" {
  type = string
  default = "jsk;gk;sk;'sk;a;"
  
}
