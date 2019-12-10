resource "azurerm_virtual_network" "virtual_network" {
  name                = "${random_string.random_name.result}-vnet"
  address_space       = ["${var.vnet_address_space}"]
  location            = "${var.location_name}"
  resource_group_name = "${azurerm_resource_group.resource_group.name}"

  tags                     = "${var.tags}"

}
