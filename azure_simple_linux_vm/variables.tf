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
variable "network_interfaces" {}
