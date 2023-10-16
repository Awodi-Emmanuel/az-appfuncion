variable "azure_resource_group_name" {
  type = string
  default = ""
}

variable "name" {
  type = string
}

variable "storage_account_name" {
    type = string
    
  
}

variable "location" {
    type = string
  
}

variable "https_only" {
    type = bool
    default = true
}

variable "storage_account_access_key" {
  type = string
}

variable "APPINSIGHTS_INSTRUMENTATIONKEY" {
  type = string
  default = ""
}

variable "service_plan" {
  type = string
}

variable "environment" {
  type = string
}

variable "application_name" {
  type = string
}

variable "APPLICATIONINSIGHTS_CONNECTION_STRING" {
  type = string
}

variable "always_on" {
  type = bool
}