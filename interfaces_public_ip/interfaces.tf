resource "azurerm_network_interface" "azure_network_interface" {
  location = var.region
  name = var.interface_name
  resource_group_name = var.resource_grp_name
  enable_accelerated_networking = var.enable_accelerated_networking
  enable_ip_forwarding = var.enable_ip_forwarding
  ip_configuration {
    name = var.ip_address_name
    subnet_id = var.subnet_id
    private_ip_address_allocation = var.ip_allocation_static_dynamic
    private_ip_address = var.private_ip_address
    public_ip_address_id = var.public_ip_address
  }
  tags = {
    panInterface = var.pan_interface_tag
  }
}

output "pub_ip_interface_id" {
  value = azurerm_network_interface.azure_network_interface.id
}

output "private_network_interface_ip" {
  value = azurerm_network_interface.azure_network_interface.private_ip_address
}