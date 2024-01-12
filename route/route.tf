resource "azurerm_route" "azure_route" {
  name                = var.route_name
  resource_group_name = var.resource_group_name
  route_table_name    = var.route_table_name
  address_prefix      = var.route_address_prefix
  next_hop_type       = var.route_next_hop_type
}
/*
output "azure_route_prefix" {
  value = azurerm_route.azure_route.address_prefix
}
*/