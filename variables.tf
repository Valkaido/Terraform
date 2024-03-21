variable "location" {
    description = "Azure region to deploy the ressources."
    default = "East US"
}

variable "ressource-group-name" {
    description = "Name of the ressource group"
    default = "tp3-ressource-group"
}

variable "storage-account-name" {
    description = "Name of the storage account"
    default = "tp3-account-storage"
}