###########
# Provider
###########
provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

##########
# Records
##########
# Note: In this case we are using existing zone, this can also be created
# within Terraform as well using cloudflare_zone if needed
resource "cloudflare_record" "app" {
  zone_id = var.zone_id
  name    = "app"
  value   = azurerm_public_ip.pip.ip_address
  type    = "A"
  proxied = true
}
