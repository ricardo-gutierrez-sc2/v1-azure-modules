resource "azurerm_lb_outbound_rule" "azure_lb_outbound_rule" {
  location = var.region
  name = var.lb_outbound_rule_name
  resource_group_name = var.resource_group_name
  backend_address_pool_id = var.outbound_rule_backend_address_pool_id
  loadbalancer_id = var.lb_id
  protocol = var.outbound_rule_protocol
}