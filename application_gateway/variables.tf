variable "applicationgw_name" {}
variable "resource_group_name" {}
variable "region" {}
variable "appgw_zones" {
  description = "Enter the Zone number where the appgw will be needed. yo uhave to pick at least two. These are the possiblevalues 1,2,3"
  type = list
}
variable "appgw_sku_name" {
  description = "Enter Any of these Values: Standard_Small, Standard_Medium, Standard_Large, Standard_v2, WAF_Medium, WAF_Large, and WAF_v2."
}
variable "appgw_sku_tier" {
  description = "nter Any of these Values: Standard, Standard_v2, WAF and WAF_v2"
}
variable "appgw_ip_conf_name" {
  description = "Enter the name of the IP configuration"
}
variable "subnet_id" {}
variable "appgw_frontend_port_name" {}
variable "appgw_frontend_port_number" {
  description = "Enter the port number eg. 80"
}
variable "frontend_ip_configuration_name" {
  description = "Enter the "
}
variable "frontend_public_ip_address_id" {}
variable "frontend_private_ip_address_allocation" {
  description = "Dynamic or Static"
}
variable "frontend_private_ip_address" {
  description = "Enter the private frontend IP address for the app gateway"
}
variable "backend_address_pool_name" {}
variable "backend_http_setting_name" {}
variable "backend_cookie_based_affinity" {
  description = "posible values: Enabled Disabled"
}
variable "backend_http_setting_path" {
  description = " Path example /path1/"
}
variable "backend_http_setting_port" {
  description = "eg. port 80"
}
variable "backend_http_setting_protocol" {
  description = "Example Http"
}
variable "backend_http_setting_request_timeout" {
  description = "The default value is usually 60"
}
variable "http_listener_name" {}
variable "http_listener_frontend_ip" {}
variable "http_listener_port_name" {}
variable "http_listener_protocol" {}
variable "request_routing_rule_name" {}
variable "request_routing_rule_type" {
  description = "value options: Basic"
}
variable "request_routing_http_listener_name" {}
variable "rule_backend_address_pool_name" {}
variable "rule_http_setting_name" {}

