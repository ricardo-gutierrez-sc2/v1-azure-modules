variable "access_source_allow_deny" {
  description = "Enter the action of the rule Allow / Deny"
  type = string
}
variable "security_rule_description" {
  type = string
}
variable "direction" {
  description = "Enter the direction of the security rule. Options Inbound or Outbound"
}
variable "security_rule_name" {
  type = string
}
variable "network_security_grp_name" {
  description = "Enter the name of the group name this rule will be a part of"
  type = string
}
variable "security_rule_acl_priority" {
  description = "Enter the priority value of hte rule , 100 is at the top of the list"
  type = string
}
variable "security_rule_protocol" {
  description = "Enter the Security Rule protocol. It can be Tcp / Udp / Icmp / Esp ah or *"
  type = string
}
variable "resource_grp_name" {
  type = string
}
variable "security_rule_source_port_range" {
  description = "Enter any value between 65536"
  type = string
}
variable "security_rule_src_addresses" {
  description = "Enter the source IP address"
  type = list
}
variable "security_rule_destination_addresses" {
  type = list
}
variable "security_rule_destination_port_range" {
  description = "Enter any value between 65536"
  type = string
}