variable "azure_resource_name" {
  type    = string
  default = "rg-test"
}

variable "location" {
  type    = string
  default = "West Europe"

}

variable "function-app" {
  type    = string
  default = "func-app"
}

variable "account_tier" {
  type    = string
  default = "standard"
}

variable "account_replication_type" {
  type    = string
  default = "LRS"

}

variable "test-service-plan" {
  type    = string
  default = "test-s-plan"
}

variable "tier" {
  type    = string
  default = "standard"
}

variable "size" {
  type    = string
  default = "S1"
}

variable "azure_function_app" {
  type    = string
  default = "test-a-func"

}