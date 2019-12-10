resource "azurerm_public_ip" "pip" {
  name                      = "${random_string.random_name.result}-pip"
  location                  = "${var.location_name}"
  resource_group_name       = "${azurerm_resource_group.resource_group.name}"
  allocation_method         = "Dynamic"
  idle_timeout_in_minutes   = 30

  tags                     = "${var.tags}"

}