resource "azurerm_storage_account" "azure_storage_account" {
  location = var.region
  name = var.storage_account_name
  resource_group_name = var.resource_grp_name
  account_kind = var.storage_account_kind
  account_tier = var.account_tier
  account_replication_type = var.account_registration
  min_tls_version = "TLS1_0"
  allow_nested_items_to_be_public = false

}

output "storage_account_id" {
  value = azurerm_storage_account.azure_storage_account.id
}

output "storage_account_uri" {
  value = azurerm_storage_account.azure_storage_account.primary_blob_endpoint
}

output "storage_account_name" {
  value = azurerm_storage_account.azure_storage_account.name
}

output "storage_account_primary_access_key" {
  value = azurerm_storage_account.azure_storage_account.primary_access_key
}

output "storage_account_primary_connection_string" {
  value = azurerm_storage_account.azure_storage_account.primary_blob_connection_string
}


