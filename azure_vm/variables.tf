variable "vm_name" {}
variable "resource_grp_name" {}
variable "region_location" {}
variable "vm_size" {
  #default = "Standard_F2"
  default = "Standard_DS1_v2"
}
variable "admin_username" {}
variable "admin_password" {}
variable "custom_data_file" {}
variable "enable_boot_diagnostics" {}
variable "boot_diagnostics" {}
variable "storage_disk_name" {}
variable "network_interfaces" {}
