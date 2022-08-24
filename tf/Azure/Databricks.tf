resource "azurerm_databricks_workspace" "databricks-ws" {
  name                          = "db-${var.suffix}-ws-${var.environment}"
  resource_group_name           = azurerm_resource_group.rg-streamingData.name
  location                      = azurerm_resource_group.rg-streamingData.location
  managed_resource_group_name   = "db-managed-rg-tfcloud-${var.environment}"
  sku                           = "premium"
  public_network_access_enabled = true
}

provider "databricks" {
  host                        = azurerm_databricks_workspace.databricks-ws.workspace_url
  azure_workspace_resource_id = azurerm_databricks_workspace.databricks-ws.id
  azure_client_id             = env.ARM_CLIENT_ID
  azure_client_secret         = env.ARM_CLIENT_SECRET
  azure_tenant_id             = data.azurerm_client_config.current.tenant_id
}