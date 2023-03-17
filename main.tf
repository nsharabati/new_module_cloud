provider "infoblox" {
  server   = "172.16.0.207"
  username = var.username
  password = var.password
}

resource "infoblox_ipv4_allocation" "alloc1" {
  network_view = "default"
  # this is to allocate
  # an IP address from the given network block
  cidr       = var.subnet_mask["${var.prd_dev_uat}"][random_integer.rand.result]
  #cidr       = var.available_network["${var.prd_dev_uat}"]
  dns_view   = "internal" # may be commented out
  fqdn       = var.fqdn
  enable_dns = "true"
  comment    = "Allocating an IPv4 address"

}
