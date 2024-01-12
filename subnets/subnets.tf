resource "azurerm_subnet" "azure_subnet" {
  name = var.subnet_name
  resource_group_name = var.resource_grp_name
  virtual_network_name = var.vnet_name
  address_prefixes = [var.subnet_prefix]
}

output "azure_subnet_id" {
  value = azurerm_subnet.azure_subnet.id
}

output "azure_subnet_name" {
  value = azurerm_subnet.azure_subnet.name
}

output "azure_subnet_prefix" {
  value = azurerm_subnet.azure_subnet.address_prefixes
}
