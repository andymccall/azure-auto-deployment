resource "azurerm_resource_group" "resource_group" {
  name     = "${random_string.random_name.result}-rg"
  location = "${var.location_name}"

  tags                     = "${var.tags}"

}