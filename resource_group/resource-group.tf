resource "azurerm_resource_group" "azure_resource_group" {
  name     = var.resource_grp_name
  location = var.region
  tags = {
    StoreStatus = var.tag1_name
    DND_REASON = var.tag2_name
  }
}

output "resource_grp_name" {
  value = azurerm_resource_group.azure_resource_group.name
}

output "resource_grp_location" {
  value = azurerm_resource_group.azure_resource_group.location
}