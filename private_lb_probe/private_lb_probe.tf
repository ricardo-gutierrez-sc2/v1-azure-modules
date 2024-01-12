resource "azurerm_lb_probe" "azure_lb_probe" {
  loadbalancer_id = var.privatelb_id
  name            = var.lb_probe_name
  port            = var.lb_probe_port_number
  #resource_group_name = var.resource_group_name

}

output "azure_lb_probe_id" {
  value = azurerm_lb_probe.azure_lb_probe.id
}