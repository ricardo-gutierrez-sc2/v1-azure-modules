resource "azurerm_virtual_machine" "azure_virtual_machine" {
  name = var.vm_instnace_name
  location = var.region
  resource_group_name = var.resource_grp_name
  primary_network_interface_id = var.fw_primary_interface_id
  network_interface_ids = var.fw_network_interfaces_ids
  vm_size = var.vm_size
  delete_data_disks_on_termination = true
  delete_os_disk_on_termination = true
  zones = var.fw_zone_number
  boot_diagnostics {
    enabled = true
    storage_uri = var.diagnostic_storage_account_uri
  }

  plan {
    name = var.FW_SQL_BYOL_Bundle2
    publisher = "paloaltonetworks"
    product = "vmseries-flex"
  }

  storage_image_reference {
    publisher = "paloaltonetworks"
    offer = "vmseries-flex"
    sku = var.FW_SQL_BYOL_Bundle2
    version = var.fw_image_version
  }

  storage_os_disk {
    create_option = "FromImage"
    name = var.fw_storage_name
    caching = "ReadWrite"
    managed_disk_type = "StandardSSD_LRS"  // Original from Standard_LRS  9/28/2022
    os_type = "Linux"   //added 09/28/2022
    #vhd_uri = ""
  }

  os_profile {
    computer_name = var.firewall_name
    admin_username = var.fw_user_name
    admin_password = var.fw_password
    custom_data = base64encode(
    join(",",[
      "storage-account=${var.storage_account}",
      "access-key=${var.access_key}",
      "file-share=${var.share_name}",
      "share-directory=${var.share_directory}"],)
    )
    #join(",",["storage-account=${var.storage_account}","access-key=${var.access_key}","file-share=${var.share_name}"],)
    #)
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  tags = {
    Environment = var.environment
  }

}

/*
Changes this to test github
The following VMs are supported:
               -Standard_D3
                -Standard_D4
                -Standard_D3_v2
                -Standard_D4_v2
                -Standard_A4
                -Standard_DS3_v2
                -Standard_DS4_v2
*/