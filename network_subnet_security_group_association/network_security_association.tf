resource "azurerm_subnet_network_security_group_association" "network_seubnet_security_grp_association" {
  network_security_group_id = var.networ_security_group_id
  subnet_id = var.subnet_id
}

output "subnet_security_group_association_id" {
  value = azurerm_subnet_network_security_group_association.network_seubnet_security_grp_association.id
}
