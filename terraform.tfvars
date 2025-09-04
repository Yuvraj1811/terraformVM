rgs = {
  rg1 = {
    name     = "test-rg"
    location = "Central India"
  }
}

stgs = {
  stg1 = {
    name                     = "strgtest987"
    resource_group_name      = "test-rg"
    location                 = "Central India"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

vnets = {
  vnet1 = {
    vnet_name           = "vnet01"
    resource_group_name = "test-rg"
    location            = "Central India"
    address_space       = ["10.0.0.0/16"]
  }
}

subnets = {
  subnet1 = {
    subnet_name          = "subnet01"
    resource_group_name  = "test-rg"
    virtual_network_name = "vnet01"
    address_space        = ["10.0.1.0/24"]
  }
}
/////