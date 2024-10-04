terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.3.0"
    }
  }
}

provider "azurerm" {
  features {

  }
  subscription_id = "13fff3d3-12b1-4f5c-ab96-dd57de6056ab"
}