resource "azurerm_subnet" "subnet" {
  name                 = "${random_string.random_name.result}-subnet"
  resource_group_name  = "${azurerm_resource_group.resource_group.name}"
  virtual_network_name = "${azurerm_virtual_network.virtual_network.name}"
  address_prefix       = "${var.subnet_address_space}"
}
