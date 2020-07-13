variable "vpc_count" {
  default = 2
}

variable "username" {
  type    = string
  default = ""
}

variable "password" {
  type    = string
  default = ""
}

variable "controller_ip" {
  type    = string
  default = ""
}

variable "cloud_type" {
  default = 1
}

variable "hpe" {
  default = false
}

variable "region" {
  default = "us-east-2"
}

variable "key_name" {
  default = "avtx-key"
}

variable "azure_account_name" {
  default = ""
}

variable "azure_gw_size" {
  default = "c5.xlarge"
}

variable "firewall_size" {
  default = "c5.xlarge"
}

variable "fw_image" {
  default = "Check Point CloudGuard IaaS Next-Gen Firewall w. Threat Prevention & SandBlast BYOL"
}

variable "azure_spoke_params" {
  description = "Azure Spoke Parameters: azure_spoke_vpc_name, azure_spoke_subnet_cidr, azure_spoke_region, azure_region_alias, azure_account_name"
  type = map(object({
    azure_spoke_vpc_name = string
    azure_spoke_vpc_cidr = string
    azure_spoke_gw_name  = string
    azure_spoke_region   = string
    azure_region_alias   = string
    azure_account_name   = string
  }))
}