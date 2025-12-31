variable "resource_group_name" {
  type        = string
  description = "Name of the Azure Resource Group"
  default     = "rg-terraform-ci-demo"
}

variable "location" {
  type        = string
  description = "Azure region where resources will be created"
  default     = "australiaeast"
}
