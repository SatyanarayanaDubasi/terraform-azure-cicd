variable "rg_name" {
  type    = string
  default = "cicd-rg"
}

variable "location_name" {
  type    = string
  default = "West Europe"
}

variable "vnet_name" {
  type    = string
  default = "cicd-vnet"
}

variable "vnet_address_space" {
  type    = list(string)
  default = ["10.0.0.0/16"]
}
