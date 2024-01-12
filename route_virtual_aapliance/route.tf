resource "azurerm_route" "azure_route_virtual_appliance" {
  name                = var.route_name
  resource_group_name = var.resource_group_name
  route_table_name    = var.route_table_name
  address_prefix      = var.route_address_prefix
  next_hop_type       = var.route_next_hop_type
  next_hop_in_ip_address = var.route_next_hop_ip_address
}