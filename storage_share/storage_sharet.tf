
resource "azurerm_storage_share" "azure_storage_sharename" {
  name = var.storage_sharename
  quota = "1"
  storage_account_name = var.storage_account_name
  access_tier = "Cool"
}

output "azure_storage_sharename" {
  value = azurerm_storage_share.azure_storage_sharename.name
}

output "azure_storage_share_id" {
  value = azurerm_storage_share.azure_storage_sharename.id
}
