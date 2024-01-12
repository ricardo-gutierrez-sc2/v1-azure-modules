resource "azurerm_availability_set" "azure_availability_set" {
  location = var.region
  name = var.availability_zone_name
  resource_group_name = var.resource_grp_name
  platform_fault_domain_count = var.fault_domain_count
  platform_update_domain_count = var.update_domain_count
}

output "availability_set_id" {
  value = azurerm_availability_set.azure_availability_set.id
}