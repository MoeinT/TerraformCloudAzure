resource "azurerm_key_vault" "KeyVault" {
  name                        = "KeyVault-tfcloud-${var.environment}"
  location                    = azurerm_resource_group.rg-streamingData.location
  resource_group_name         = azurerm_resource_group.rg-streamingData.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7

  sku_name = "standard"


  dynamic "access_policy" {
    for_each = local.access_policy
    content {
      tenant_id           = access_policy.value.tenant_id
      object_id           = access_policy.value.object_id
      secret_permissions  = access_policy.value.secret_permissions
      key_permissions     = access_policy.value.key_permissions
      storage_permissions = access_policy.value.storage_permissions
    }
  }
}