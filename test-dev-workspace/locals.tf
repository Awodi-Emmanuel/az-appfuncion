locals {
  default_tags = {
    "environment" = var.environment
    "application" = var.application_name
  }
}