resource "azurerm_lb_backend_address_pool_address" "azure_private_lb_be_pool_address" {
  name                    = var.BackEnd_Address_Pool_Address_Name
  backend_address_pool_id = var.BackEnd_Address_Pool_Address_id
  virtual_network_id      = var.vnet_id
  ip_address              = var.lb_backend_pool_address
}

