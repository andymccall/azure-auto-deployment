provider "azurerm" {

  version = ">= 1.1.0"

  subscription_id = ""
  client_id       = ""
  client_secret   = ""
  tenant_id       = ""
}

provider "random" {

  version = "~> 2.1"

}