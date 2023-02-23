provider "azurerm" {
  subscription_id = var.azure_subscription_id
  features {}
  skip_provider_registration = true
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-cf-az-test-drive"
  location = "West Europe"
}

resource "azurerm_container_group" "cg" {
  name                = "cg-cf-az-test-drive"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  ip_address_type     = "Public"
  dns_name_label      = "cg-cf-az-test-drive"
  os_type             = "Linux"

  container {
    name   = "hello-world"
    image  = "nginx:latest"
    cpu    = "0.5"
    memory = "1.5"

    ports {
      port     = 80
      protocol = "TCP"
    }
  }
}
