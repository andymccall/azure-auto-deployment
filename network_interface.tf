
resource "azurerm_network_interface" "vnic" {
  name                      = "${random_string.random_name.result}-nic"
  location                  = "${var.location_name}"
  resource_group_name       = "${azurerm_resource_group.resource_group.name}"
  network_security_group_id = "${azurerm_network_security_group.network_security_group.id}"

  ip_configuration {
    name                          = "${random_string.random_name.result}NICconfiguration"
    subnet_id                     = "${azurerm_subnet.subnet.id}"
    private_ip_address_allocation = "Static"
    public_ip_address_id          = "${azurerm_public_ip.pip.id}"
    private_ip_address            = "${var.private_ip_address}"
  }

  tags                     = "${var.tags}"

}