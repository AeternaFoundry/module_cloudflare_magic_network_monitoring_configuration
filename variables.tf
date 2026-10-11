variable "magic_network_monitoring_configurations" {
  description = <<EOT
Map of magic_network_monitoring_configurations, attributes below
Required:
    - account_id
    - name
Optional:
    - default_sampling
    - router_ips
    - warp_devices
EOT

  type = map(object({
    account_id       = string
    name             = string
    default_sampling = optional(number)
    router_ips       = optional(list(string))
    warp_devices = optional(list(object({
      id        = string
      name      = string
      router_ip = string
    })))
  }))
}

