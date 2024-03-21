# Create a resource group
resource "azurerm_resource_group" "example" {
  name                     = "tp3resourcegroup"
  location                 = var.location
}

# Create a storage account
resource "azurerm_storage_account" "example" {
  name                     = var.storage-account-name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}