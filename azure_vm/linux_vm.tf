//filebase64("${path.module}/app-scripts/app1-cloud-init.txt")

resource "azurerm_virtual_machine" "linux_vm" {
  name                = var.vm_name
  resource_group_name = var.resource_grp_name
  location            = var.region_location
  vm_size             = var.vm_size
  network_interface_ids = [
    var.network_interfaces
  ]

  boot_diagnostics {
    enabled     = var.enable_boot_diagnostics
    storage_uri = var.boot_diagnostics
  }

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18_04-lts-gen2"
    version   = "latest"
  }

  storage_os_disk {
    create_option     = "FromImage"
    name              = var.storage_disk_name
    caching           = "ReadWrite"
    managed_disk_type = "StandardSSD_LRS" // Original from Standard_LRS  9/28/2022
    os_type           = "Linux"           //added 09/28/2022

  }

  os_profile {
    computer_name  = var.vm_name
    admin_username = var.admin_username
    admin_password = var.admin_password
    custom_data    = var.custom_data_file
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
}
output "linux_bm_id" {
  value = azurerm_virtual_machine.linux_vm.id
}