variable "username" {
  type        = string
  description = "username"
  default     = "nsharabati_a"
  sensitive   = false

}

variable "password" {
  type        = string
  description = "password"
  sensitive   = true

}

variable "fqdn" {
  type        = string
  description = "Arecord1"
}


variable "prd_subnet" {
  type        = string
  description = "10.16.0.0/16"
  default     = "10.16.0.0/16"
}

variable "subnet_mask" {
  type        = map(list(string))
  description = ""
  default     = {
    

  prd = ["10.16.180.0/24", "10.16.181.0/24", "10.16.182.0/24"]
  uat = ["10.17.180.0/24", "10.17.181.0/24", "10.17.182.0/24"]
  dev = ["10.18.180.0/24", "10.18.181.0/24", "10.18.182.0/24"]

  }
}



variable "prd_dev_uat" {
  type        = string
  description = ""
}
 
variable "nadim" {

  type        = map(string)
  description = ""
  default     = {
    

 "name1" = "nadim.vmcloud",
 "name2" = "hani.vmcloud",
 "name3" = "mahmoud.vmcloud",
 "name4" = "ahmad.vmcloud"

}

 }

