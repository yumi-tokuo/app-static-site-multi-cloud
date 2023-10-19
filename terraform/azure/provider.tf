terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.76.0"
    }
  }
}

provider "azurerm" {
  features {}
  alias = "cloud"
  skip_provider_registration = true
}