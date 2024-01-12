##############################################################################
#####-- Use this Module when you have Single destination port ranges --#################
##############################################################################

resource "azurerm_network_security_rule" "azure_net_security_rule" {
  access = var.access_source_allow_deny
  description = var.security_rule_description
  direction = var.direction
  name = var.security_rule_name
  network_security_group_name = var.network_security_grp_name
  priority = var.security_rule_acl_priority
  protocol = var.security_rule_protocol
  resource_group_name = var.resource_grp_name
  source_port_range = var.security_rule_source_port_range
  source_address_prefixes = var.security_rule_src_addresses
  destination_address_prefixes = var.security_rule_destination_addresses
  destination_port_range = var.security_rule_destination_port_range
}
