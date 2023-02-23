provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

resource "cloudflare_record" "app" {
  zone_id = var.zone_id
  name    = "app"
  value   = azurerm_container_group.cg.ip_address
  type    = "A"
  proxied = true
}
