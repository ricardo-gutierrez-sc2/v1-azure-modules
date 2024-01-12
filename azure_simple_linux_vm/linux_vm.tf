//filebase64("${path.module}/app-scripts/app1-cloud-init.txt")

resource "azurerm_linux_virtual_machine" "linux_vm" {
  name                            = var.vm_name
  resource_group_name             = var.resource_grp_name
  location                        = var.region_location
  size                            = var.vm_size
  admin_username                  = var.admin_username
  admin_password                  = var.admin_password
  disable_password_authentication = false
  custom_data                     = var.custom_data_file
  network_interface_ids = [
    var.network_interfaces
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18_04-lts-gen2"
    version   = "latest"
  }
}

output "linux_bm_id" {
  value = azurerm_linux_virtual_machine.linux_vm.id
}