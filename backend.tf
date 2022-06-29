terraform {
  required_providers {
    azurerm = {
        source  = "hashicorp/azurerm"
        version = "=3.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name     = "TerraformDemo"
    storage_account_name    = "terraformcodeops"
    container_name          = "tfstate"
    key                     = "GitHub-Terraform-rg-connectivity-001"
  }
}
provider "azurerm" {
  features {}
}
