resource "azurerm_network_interface" "azure_network_interface" {
  location = var.region
  name = var.interface_name
  resource_group_name = var.resource_grp_name
  # Accelerated Networking supported by PANOS
  enable_accelerated_networking = true
  enable_ip_forwarding = true
  ip_configuration {
    name = var.ip_address_name
    subnet_id = var.subnet_id
    private_ip_address_allocation = var.ip_allocation_static_dynamic
    private_ip_address = var.private_ip_address
  }
  tags = {
    panInterface = var.pan_interface_tag
  }
}

output "private_ip_interface_id" {
  value = azurerm_network_interface.azure_network_interface.id
}
output "private_network_interface_ip" {
  value = azurerm_network_interface.azure_network_interface.private_ip_address
}