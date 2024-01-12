resource "azurerm_public_ip" "azure_pub_ip" {
  allocation_method = var.public_address_type
  location = var.region
  name = var.public_ip_name
  resource_group_name = var.resource_grp_name
  domain_name_label = var.host_fqdn
  zones = var.pub_ip_availability_zone
  sku = var.pub_ip_sku

  tags = {
    Name = var.public_ip_name_tag
  }
}

output "azure_pub_ip_address" {
  value = azurerm_public_ip.azure_pub_ip.ip_address
}

output "azure_pub_ip_id" {
  value = azurerm_public_ip.azure_pub_ip.id
}

output "azure_pub_ip_name" {
  value = azurerm_public_ip.azure_pub_ip.name
}