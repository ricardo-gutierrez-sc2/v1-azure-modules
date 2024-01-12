resource "azurerm_route_table" "azure_route_table" {
  name = var.route_table_name
  location = var.region
  resource_group_name = var.resource_group_name
  disable_bgp_route_propagation = var.disable_bgp_route_propagation

  tags = {
    Environment = var.tag_environment
  }
}

output "route_table_id" {
  value = azurerm_route_table.azure_route_table.id
}

output "route_table_name" {
  value = azurerm_route_table.azure_route_table.name
}