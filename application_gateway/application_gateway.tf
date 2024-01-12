# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_gateway
resource "azurerm_application_gateway" "network" {
  name                = var.applicationgw_name
  resource_group_name = var.resource_group_name
  location            = var.region
  zones = var.appgw_zones

  sku {
    name     = var.appgw_sku_name
    tier     = var.appgw_sku_tier
    capacity = 2
  }

  gateway_ip_configuration {
    name      = var.appgw_ip_conf_name
    subnet_id = var.subnet_id
  }

  frontend_port {
    name = var.appgw_frontend_port_name
    port = var.appgw_frontend_port_number
  }

  frontend_ip_configuration {
    name                 = var.frontend_ip_configuration_name
    public_ip_address_id = var.frontend_public_ip_address_id
    private_ip_address_allocation = var.frontend_private_ip_address_allocation
    private_ip_address = var.frontend_private_ip_address
  }

  backend_address_pool {
    name = var.backend_address_pool_name  #need to create the pool resource
  }

  backend_http_settings {
    name                  = var.backend_http_setting_name
    cookie_based_affinity = var.backend_cookie_based_affinity
    path                  = var.backend_http_setting_path
    port                  = var.backend_http_setting_port
    protocol              = var.backend_http_setting_protocol
    request_timeout       = var.backend_http_setting_request_timeout
  }

  http_listener {
    name                           = var.http_listener_name
    frontend_ip_configuration_name = var.http_listener_frontend_ip
    frontend_port_name             = var.http_listener_port_name
    protocol                       = var.http_listener_protocol
  }

  request_routing_rule {
    name                       = var.request_routing_rule_name
    rule_type                  = var.request_routing_rule_type
    http_listener_name         = var.request_routing_http_listener_name
    backend_address_pool_name  = var.rule_backend_address_pool_name
    backend_http_settings_name = var.rule_http_setting_name
    #priority                   = 0
  }
}