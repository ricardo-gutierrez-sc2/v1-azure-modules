resource "azurerm_storage_share_file" "content_update" {
  name             = var.content_file_name
  storage_share_id = var.storage_sharename
  source           = var.source_content_file_directory
  path = var.bucket_directory_path
}