terraform {
  cloud {
    organization = "TerraformActions"

    workspaces {
      tags = ["terraformcloud"]
    }
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}