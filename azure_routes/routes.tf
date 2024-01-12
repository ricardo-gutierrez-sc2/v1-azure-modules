resource "azurerm_route" "azure_route" {
  address_prefix = var.adress_prefix
  name = var.route_name
  next_hop_type = var.next_hop_type
  resource_group_name = var.resource_grp_name
  route_table_name = var.route_table_name
}