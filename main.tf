terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.35.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "d471b3fd-4ab5-4021-bbbb-3f55ab2e7a83"
}

resource "azurerm_resource_group"  "rg-chandra" {
    count= length(var.rg_name)
    name=var.rg_name[count.index]
    location="East US"
}
