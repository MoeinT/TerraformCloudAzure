resource "azurerm_resource_group" "rg-streamingData" {
  name     = "rg-${var.suffix}-${local.env}"
  location = var.location
}

# resource "azurerm_storage_account" "sq-streamingData" {
#   name                     = "sa22tfcloud${local.env}"
#   resource_group_name      = azurerm_resource_group.rg-streamingData.name
#   location                 = azurerm_resource_group.rg-streamingData.location
#   account_tier             = "Standard"
#   account_replication_type = "LRS"
#   is_hns_enabled           = true
# }