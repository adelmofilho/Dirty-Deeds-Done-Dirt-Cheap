# Configura DigitalOcean Provider
provider "digitalocean" {
  token = "${var.token}"
  api_endpoint = "${var.api_endpoint}"
}

# Cria Droplet
resource "digitalocean_droplet" "droplet" {
  image  = "${var.image_list[var.image_index]}"
  name   = "${var.droplet_name}"
  region = "${var.region_list[var.region_index]}"
  size   = "${var.size_list[var.size_index]}"
}

