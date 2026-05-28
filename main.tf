resource "azurerm_resource_group" "rg" {
  name     = "rg_v"
  location = "central india"
}

resource "azurerm_resource_group" "rg1" {
  name     = "rg_k"
  location = "east us"
}

resource "azurerm_resource_group" "rg2" {
  name     = var.x
  location = var.y
}

resource "azurerm_storage_account" "rg3" {
  depends_on               = [azurerm_resource_group.rg]
  name                     = "stgrgs"
  location                 = "central india"
  account_tier             = "Standard"
  resource_group_name      = "rg_v"
  account_replication_type = "LRS"
}

resource "azurerm_storage_account" "rg4" {
  for_each                 = var.z
  name                     = each.key
  location                 = each.value.location
  resource_group_name      = each.value.rgname
  account_tier             = each.value.tier
  account_replication_type = each.value.redundancy
}