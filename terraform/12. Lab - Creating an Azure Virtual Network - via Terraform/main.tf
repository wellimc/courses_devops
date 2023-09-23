/*

The following links provide the documentation for the new blocks used
in this terraform configuration file

1.azurerm_virtual_network - https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network

*/

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.10.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "6912d7a0-bc28-459a-9407-33bbba641c07"
  tenant_id = "70c0f6d9-7f3b-4425-a6b6-09b47643ec58"
  client_id = "fb3eb97c-8679-488e-a4b4-5fd90299b7a2"
  client_secret = "38o8Q~MsAPo59FK.Zsq0eQImB-vW2wrJznAUqc9V"
  features {}  
}


resource "azurerm_resource_group" "appgrp" {
  name     = "app-grp"
  location = "North Europe"
}

resource "azurerm_virtual_network" "appnetwork" {
  name                = "app-network"
  location            = "North Europe"
  resource_group_name = "app-grp"
  address_space       = ["10.0.0.0/16"]

  subnet {
    name           = "subnetA"
    address_prefix = "10.0.0.0/24"
  }

  subnet {
    name           = "subnetB"
    address_prefix = "10.0.1.0/24"    
  }
}

