# Configura DigitalOcean Provider
provider "digitalocean" {
  token = "${var.token}"
}

# Cria Droplet
resource "digitalocean_droplet" "droplet" {
  image  = "${var.image_list[var.image_index]}"
  name   = "web-1"
  region = "${var.region_list[var.region_index]}"
  size   = "s-1vcpu-1gb"
}

