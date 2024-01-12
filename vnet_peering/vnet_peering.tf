# Build the VNET Peering Connection

resource "azurerm_virtual_network_peering" "azure_vnet_peering" {
  name                      = var.vnet_peering_name
  resource_group_name       = var.resource_grp_name
  virtual_network_name      = var.virtual_network
  remote_virtual_network_id = var.remote_virtual_network_id
  allow_forwarded_traffic = var.vnet_allow_forward_traffic
  allow_virtual_network_access = var.vnet_allow_network_access
  allow_gateway_transit = var.allow_gateway_transit
}

output "azure_vnet_peering_id" {
  value = azurerm_virtual_network_peering.azure_vnet_peering.id
}