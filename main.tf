# Create a resource group
resource "azurerm_resource_group" "example" {
  name                     = var.resource-group-name
  location                 = var.location
  account_tier             = "Standard"
}

# Create a storage account
resource "azurerm_storage_account" "example" {
  name                     = var.storage-account-name
  resource_group_name      = var.resource-group-name
  location                 = var.location
  account_tier             = "Standard"
}