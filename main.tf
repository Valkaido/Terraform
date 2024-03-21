# Create a ressource group
resource "azurerm_resource_group" "example" {
  name                     = var.ressource-group-name
  location                 = var.location
  account_tier             = "Standard"
}

# Create a storage account
resource "azurerm_storage_account" "example" {
  name                     = var.storage-account-name
  location                 = var.location
  account_tier             = "Standard"
}