resource "azurerm_storage_account" "storage_account_diag" {
  name                     = "${random_string.random_name.result}"
  resource_group_name      = "${azurerm_resource_group.resource_group.name}"
  location                 = "${var.location_name}"
  account_tier             = "${element(split("_", var.boot_diagnostics_sa_type),0)}"
  account_replication_type = "${element(split("_", var.boot_diagnostics_sa_type),1)}"

  tags                     = "${var.tags}"

}