resource "azurerm_virtual_network" "azure_vnet" {
  address_space = [var.vnet_cidr]
  location = var.region
  name = var.vnet_name
  resource_group_name = var.resource_grp_name
  #dns_servers_names = [var.dns_server]
  /*
  subnet {
    address_prefix = "169.254.0.0"
    name = "not-used"
  }
  */
}

output "vnet_name" {
  value = azurerm_virtual_network.azure_vnet.name
}

output "vnet_id" {
  value = azurerm_virtual_network.azure_vnet.id
}