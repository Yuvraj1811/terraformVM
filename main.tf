resource "azurerm_resource_group" "rg" {
  for_each = var.rgs
  name     = each.value.name
  location = each.value.location
}

//strg
resource "azurerm_storage_account" "strg" {
  for_each                 = var.stgs
  name                     = each.value.name
  resource_group_name      = each.value.resource_group_name
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type

  depends_on = [azurerm_resource_group.rg]
}

///vnet
resource "azurerm_virtual_network" "vnet" {
  for_each            = var.vnets
  name                = each.value.vnet_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space       = each.value.address_space

  depends_on = [azurerm_resource_group.rg]
}

/// subnet
resource "azurerm_subnet" "subnets" {
  for_each             = var.subnets
  name                 = each.value.subnet_name
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
  address_prefixes     = each.value.address_space

  depends_on = [azurerm_virtual_network.vnet]

}