resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
  tags = {
    ManagedBy = "Terraform"
    Pattern   = "Nested-Map-Dynamic-Loop"
  }
}

resource "azurerm_storage_account" "storage_accounts" {
  for_each                 = var.storage_accounts_map
  name                     = each.key
  resource_group_name      = each.value.rgname
  location                 = each.value.location
  account_tier             = each.value.tier
  account_replication_type = each.value.redundancy

  depends_on = [azurerm_resource_group.rg]

  tags = {
    StorageID = each.key
    Tier      = each.value.tier
  }
}
