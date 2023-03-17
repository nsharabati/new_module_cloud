resource "random_integer" "rand" {
  
  min = 0
  max = length(var.subnet_mask["${var.prd_dev_uat}"])-1
}

locals {
  common_tags = {

    #Network_number        = infoblox_ipv4_allocation.alloc1.ip_addr == "10.18.180.1" ? random_interger.rand.result + 1  : random_interger.rand.result
    #network_mask          = var.subnet_mask["${var.prd_dev_uat}"][random_integer.rand.result]
    #network_mask          = var.subnet_mask["${var.prd_dev_uat}"][Network_number]
    #network_mask          = infoblox_ipv4_allocation.alloc1.ip_addr == "10.18.180.1" ? var.subnet_mask["${var.prd_dev_uat}"][random_interger.rand.result]  : var.subnet_mask["${var.prd_dev_uat}"][random_interger.rand.result+1]
    
  

  }

}
