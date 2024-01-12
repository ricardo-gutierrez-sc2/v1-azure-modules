resource "azurerm_route_table" "azure_route_table" {
  location = var.region
  name = var.route_table_name
  resource_group_name = var.resource_grp_name
  disable_bgp_route_propagation = var.disable_bgp_propagtion

  tags = {
    Name = var.route_table_name_tag
  }
}

output "route_table_name" {
  value = azurerm_route_table.azure_route_table.name
}

output "route_table_id" {
  value = azurerm_route_table.azure_route_table.id
}