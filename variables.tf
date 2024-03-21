variable "location" {
    description = "Azure region to deploy the ressources."
    type        = string
    default     = "westus2"
}

variable "storage-account-name" {
    description = "Name of the storage account"
    type        = string
    default     = "tp3accountstorage"
}
