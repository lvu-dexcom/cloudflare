provider "cloudflare" {
  email = "lvu@dexcom.com"
  token = "hvsudLuXTacw0INWqyePOJEwmAYb7htvqaQYNRgT"
}

variable "domain" {
  default = "sharepki-serverdev-us.dexcomdev.com"
}

resource "cloudflare_record" "sharepki" {
  domain  = "${var.domain}"
  name    = "sharepki"
  value   = "34.123.133.90"
  type    = "A"
  proxied = true
}