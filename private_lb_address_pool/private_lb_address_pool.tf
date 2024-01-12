resource "azurerm_lb_backend_address_pool" "azure_private_lb_back_end_pool" {
  loadbalancer_id = var.private_lb_id
  name            = var.BackEnd_Address_Pool_Mame
  #resource_group_name = var.resource_group_name
}

output "private_lb_backend_pool_id" {
  value = azurerm_lb_backend_address_pool.azure_private_lb_back_end_pool.id
}