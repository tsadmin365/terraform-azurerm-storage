variable "resource_group_name" {
  description = "The name of the resource group in which to create the storage account."
  type        = string

}

variable "location" {
  description = "The Azure region in which to create the storage account."
  type        = string
  default     = "East US"

}

variable "environment" {
  description = "The environment for which the storage account is being created (e.g., dev, test, prod)."
  type        = string
  default     = "dev"
}

variable "storage_account_name" {
  description = "The name of the storage account to create. Must be globally unique."
  type        = string
  default     = "mystorageaccount12345" # Change this to a unique name
}
