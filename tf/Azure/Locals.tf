locals {
  access_policy = [
    {
      tenant_id           = data.azurerm_client_config.current.tenant_id,
      object_id           = var.sp_object_id,
      secret_permissions  = ["Backup", "Delete", "Get", "List", "Purge", "Recover", "Restore", "Set"]
      key_permissions     = ["Get", ]
      storage_permissions = ["Get", ]
    },
    {
      tenant_id           = data.azurerm_client_config.current.tenant_id,
      object_id           = var.moein_obj_id,
      secret_permissions  = ["Backup", "Delete", "Get", "List", "Purge", "Recover", "Restore", "Set"]
      key_permissions     = ["Get", ]
      storage_permissions = ["Get", ]
    }
  ]
}