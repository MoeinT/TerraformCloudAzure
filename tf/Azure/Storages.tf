resource "azurerm_resource_group" "rg-streamingData" {
  name     = "rg-${var.suffix}-${var.environment}"
  location = var.location
}

resource "azurerm_storage_account" "sq-streamingData" {
  name                     = "sa22tfcloud${var.environment}"
  resource_group_name      = azurerm_resource_group.rg-streamingData.name
  location                 = azurerm_resource_group.rg-streamingData.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  is_hns_enabled           = true
}

resource "azurerm_storage_data_lake_gen2_filesystem" "fs-streamingData" {
  name               = "commonfiles-${var.environment}"
  storage_account_id = azurerm_storage_account.sq-streamingData.id
}