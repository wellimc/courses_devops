/*

The following links provide the documentation for the new blocks used
in this terraform configuration file

1. azurerm_resource_group - https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group

secret : 3cJ8Q~nzEzSgRm4XF1knsDt7egAYjhf5nh9YxbnO

*/

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.71.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "cb0b7fb2-a85b-451e-b097-cb6f809a9bfc"
  client_id       = "7aff0e8a-d9e3-4d73-a1c1-6a3e08eebb0b"
  client_secret   = "3cJ8Q~nzEzSgRm4XF1knsDt7egAYjhf5nh9YxbnO"
  tenant_id       = "1e622baf-8132-4204-9657-b37b16d16334"
  skip_provider_registration = true 
  features {}
}

resource "azurerm_resource_group" "appgrp" {
  name     = "app-gpr"
  location = "West Europe"
}


