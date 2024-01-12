resource "azurerm_lb" "azure_loadbalancer" {
  name                = var.public_loadbalancer_name
  location            = var.region
  resource_group_name = var.resource_group_name
  sku                 = var.sku_type
  sku_tier            = var.sku_tier_regional
  tags = {
    application = var.lb_app_tag_name
  }

  frontend_ip_configuration {
    name                 = var.frontend_IP_name
    public_ip_address_id = var.public_ip_address
    #zones                = var.lb_availabily_zone
    #subnet_id            = var.frontend_subnet_id
  }
}

output "public_lb_id" {
  value = azurerm_lb.azure_loadbalancer.id
}

output "pulib_lb_frontend_ip_config" {
  value = azurerm_lb.azure_loadbalancer.frontend_ip_configuration[0].name
}

