resource "cloudflare_magic_network_monitoring_configuration" "magic_network_monitoring_configurations" {
  for_each = var.magic_network_monitoring_configurations

  account_id       = each.value.account_id
  name             = each.value.name
  default_sampling = each.value.default_sampling
  router_ips       = each.value.router_ips
  warp_devices     = each.value.warp_devices
}

