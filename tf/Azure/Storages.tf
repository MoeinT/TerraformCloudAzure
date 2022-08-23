resource "azurerm_resource_group" "rg-streamingData" {
  name     = "rg-${var.suffix}-${local.env}"
  location = var.location
}