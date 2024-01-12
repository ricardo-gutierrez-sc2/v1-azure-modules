variable "public_address_type" {
  description = "Enter Static or Dynamic"
  type = string
}
variable "region" {
  type = string
}
variable "public_ip_name" {
  type = string
}
variable "resource_grp_name" {
  type = string
}
variable "host_fqdn" {
  type = string
}
variable "public_ip_name_tag" {
  type = string
}
variable "pub_ip_availability_zone" {
  type = list
}
variable "pub_ip_sku" {
  type = string
}