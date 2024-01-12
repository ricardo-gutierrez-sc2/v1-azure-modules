variable "lb_id" {}
variable "lb_rule_name" {}
variable "lb_rule_protocol" {}
variable "lb_rule_frontend_port" {}
variable "lb_rule_backend_port" {}
variable "lb_rule_frontend_ip_configuration_name" {}
variable "lb_rule_backend_address_pool_id" {
  type = list
}
variable "lb_probe_id" {}
variable "lb_rule_load_distribution" {}
variable "lb_rule_enable_floating_ip_boolean" {}
variable "resource_group_name" {}