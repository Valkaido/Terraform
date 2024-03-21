variable "location" {
    description = "Azure region to deploy the ressources."
    type        = string
    default     = "westus2"
}

variable "resource-group-name" {
    description = "Name of the resource group"
    type        = string
    default     = "tp3-resource-group"
}

variable "storage-account-name" {
    description = "Name of the storage account"
    type        = string
    default     = "tp3-account-storage"
}
