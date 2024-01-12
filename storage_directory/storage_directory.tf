resource "azurerm_storage_share_directory" "azure_storage_share_directory" {
  name = var.directory_name
  share_name = var.storage_sharename
  storage_account_name = var.storage_account_name
}

output "azure_storage_share_directory_name" {
  value = azurerm_storage_share_directory.azure_storage_share_directory.name
}
