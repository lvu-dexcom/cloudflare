provider "cloudflare" {
  email = "lvu@dexcom.com"
  api_token = "b2cd182e6c98af8870a105ebaa3e17406cc08"
}

resource "cloudflare_zone" "sharepki" {
    zone = "sharepki-serverdev-us.dexcomdev.com"
}