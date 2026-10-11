output "magic_network_monitoring_configurations_account_id" {
  description = "Map of account_id values across all magic_network_monitoring_configurations, keyed the same as var.magic_network_monitoring_configurations except keys with no account_id are omitted"
  value       = { for k, v in cloudflare_magic_network_monitoring_configuration.magic_network_monitoring_configurations : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "magic_network_monitoring_configurations_default_sampling" {
  description = "Map of default_sampling values across all magic_network_monitoring_configurations, keyed the same as var.magic_network_monitoring_configurations except keys with no default_sampling are omitted"
  value       = { for k, v in cloudflare_magic_network_monitoring_configuration.magic_network_monitoring_configurations : k => v.default_sampling if v.default_sampling != null }
}
output "magic_network_monitoring_configurations_name" {
  description = "Map of name values across all magic_network_monitoring_configurations, keyed the same as var.magic_network_monitoring_configurations except keys with no name are omitted"
  value       = { for k, v in cloudflare_magic_network_monitoring_configuration.magic_network_monitoring_configurations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "magic_network_monitoring_configurations_router_ips" {
  description = "Map of router_ips values across all magic_network_monitoring_configurations, keyed the same as var.magic_network_monitoring_configurations except keys with no router_ips are omitted"
  value       = { for k, v in cloudflare_magic_network_monitoring_configuration.magic_network_monitoring_configurations : k => v.router_ips if v.router_ips != null && length(v.router_ips) > 0 }
}
output "magic_network_monitoring_configurations_warp_devices" {
  description = "Map of warp_devices values across all magic_network_monitoring_configurations, keyed the same as var.magic_network_monitoring_configurations except keys with no warp_devices are omitted"
  value       = { for k, v in cloudflare_magic_network_monitoring_configuration.magic_network_monitoring_configurations : k => v.warp_devices if v.warp_devices != null && length(v.warp_devices) > 0 }
}

