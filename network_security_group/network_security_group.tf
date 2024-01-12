resource "azurerm_network_security_group" "azure_net_security_group" {
  location = var.region
  name = var.security_group_name
  resource_group_name = var.resource_grp_name

  tags = {
    Name = var.network_security_grp_name_tag
  }
}

output "azurem_net_security_grp_id" {
  value = azurerm_network_security_group.azure_net_security_group.id
}

output "azurem_net_security_grp_name" {
  value = azurerm_network_security_group.azure_net_security_group.name
}