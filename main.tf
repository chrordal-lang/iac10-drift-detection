terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  backend "local" {}  # enkelt, lokal state-fil
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg_drift" {
  name     = "rg-drift-detection"
  location = "westeurope"
}
