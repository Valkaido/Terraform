variable "azurerm_region" {
  description = "Azure region"
  type        = string
  default     = "us-west-2"
}

variable "location" {
    description = "Azure region to deploy the ressources."
    type        = string
    default     = "East US"
}

variable "ressource-group-name" {
    description = "Name of the ressource group"
    type        = string
    default     = "tp3-ressource-group"
}

variable "storage-account-name" {
    description = "Name of the storage account"
    type        = string
    default     = "tp3-account-storage"
}
