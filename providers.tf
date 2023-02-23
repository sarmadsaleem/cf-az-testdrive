terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "~> 3.0"
    }

    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.44.1"
    }
  }
}