variable "adress_prefix" {}
variable "route_name" {}
variable "next_hop_type" {
  description = "For the Palo Firewalls you need VirtualAppliance"
}
variable "resource_grp_name" {}
variable "route_table_name" {
  description = "Enter the route table name name that this will be part of"
}