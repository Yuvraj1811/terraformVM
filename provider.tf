terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.42.0"
    }
  }
}

provider "azurerm" {
  features {

  }

  subscription_id = "1ef3481e-bfe1-4160-aeeb-862132dc8f0e"
}
/////