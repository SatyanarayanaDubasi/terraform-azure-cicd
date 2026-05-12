terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.70.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "2e22aec5-7840-45c5-a46b-2688971d3451"
}

resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location_name
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = var.location_name
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = var.vnet_address_space
}
tags = {
  env = "prod"
}
