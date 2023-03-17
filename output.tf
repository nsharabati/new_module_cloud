output "username" {

  value = "This User:${var.username} tried to access Infoblox via Terraform"
}

output "zeroORone" {

  value        = infoblox_ipv4_allocation.alloc1.ip_addr == "10.1.180.1" ? 0 : 1
}

output "test" {

  value        = infoblox_ipv4_allocation.alloc1
}


#output "test1" {

  #value        = infoblox_ipv4_allocation.alloc1.ip_addr == "10.18.180.1" ? var.subnet_mask["${var.prd_dev_uat}"][local.random_interger.rand.result]  : var.subnet_mask["${var.prd_dev_uat}"][local.random_interger.rand.result+1]
#}
