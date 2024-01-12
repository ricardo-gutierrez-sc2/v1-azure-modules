resource "azurerm_lb" "azure_loadbalancer" {
  name                = var.private_loadbalancer_name
  location            = var.region
  resource_group_name = var.resource_group_name
  sku = var.sku_type
  sku_tier = var.sku_tier_regional
  tags = {
    application = var.lb_app_tag_name
  }

  frontend_ip_configuration {
    name                 = var.frontend_IP_name
    private_ip_address = var.lb_fe_private_ip_address
    private_ip_address_allocation = var.private_ip_allocation
    private_ip_address_version = var.private_ip_address_version_v4_v6
    zones = var.lb_availabily_zone
    subnet_id = var.frontend_subnet_id
  }
}

output "private_lb_id" {
  value = azurerm_lb.azure_loadbalancer.id
}

output "frontend_ip_config" {
  value = azurerm_lb.azure_loadbalancer.frontend_ip_configuration[0].name
}

output "frontend_ip_address" {
  value = azurerm_lb.azure_loadbalancer.private_ip_address
}


