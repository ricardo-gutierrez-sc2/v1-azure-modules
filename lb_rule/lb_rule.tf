resource "azurerm_lb_rule" "azure_lb_rule" {
  loadbalancer_id                = var.lb_id
  name                           = var.lb_rule_name
  protocol                       = var.lb_rule_protocol
  frontend_port                  = var.lb_rule_frontend_port
  backend_port                   = var.lb_rule_backend_port
  frontend_ip_configuration_name = var.lb_rule_frontend_ip_configuration_name
  backend_address_pool_ids       = var.lb_rule_backend_address_pool_id
  probe_id                       = var.lb_probe_id
  load_distribution              = var.lb_rule_load_distribution
  enable_floating_ip             = var.lb_rule_enable_floating_ip_boolean
  #resource_group_name            = var.resource_group_name
}