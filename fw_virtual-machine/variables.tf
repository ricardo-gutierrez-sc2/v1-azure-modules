variable "region" {}
variable "vm_instnace_name" {}
variable "fw_primary_interface_id" {}
variable "fw_network_interfaces_ids" {
  description = "Enter the firewall interfaces"
  type = list
}
variable "resource_grp_name" {}
variable "vm_size" {}
variable "storage_account_uri" {}
#variable "availability_set_id" {}

variable "fw_zone_number" {
  description = "Enter teh Zone where the instance will be in Zone 1, Zone 2"
  type = list
}

variable "FW_SQL_BYOL_Bundle2" {}

variable "fw_image_version" {}

variable "fw_storage_name" {}

variable "firewall_name" {}
variable "fw_user_name" {}
variable "fw_password" {}

variable "environment" {
  description = "Enter if is Prod or Non-Prod"
}
variable "diagnostic_storage_account_uri" {}
#variable "availability_set_id" {}
variable "storage_account" {}
variable "access_key" {}
variable "share_name" {}
variable "share_directory" {}