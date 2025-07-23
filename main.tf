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
  subscription_id = "5c83ee41-460c-400b-8120-13a218b61103"
  subscription_id ="6BJTTnmttmW6LMVQnC0RdbyTJ04RGzoCvT3"
}

resource "azurerm_resource_group"  "rg-chandra" {
    count= length(var.rg_name)
    name=var.rg_name[count.index]
    location="East US"
}
