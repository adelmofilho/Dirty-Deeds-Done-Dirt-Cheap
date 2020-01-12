/*
*   DigitalOcean Provider 
*   https://www.terraform.io/docs/providers/do/index.html
*/

provider "digitalocean" {
  token = "${var.token}"
  api_endpoint = "${var.api_endpoint}"
}

/*
*   digitalocean_ssh_key Resource
*   https://www.terraform.io/docs/providers/do/d/ssh_key.html
*/

resource "digitalocean_ssh_key" "ssh_key" {
  name       = "${var.ssh_key_name}"
  public_key = file("${var.ssh_public_key}")
}

/*
*   digitalocean_droplet Resource 
*   https://www.terraform.io/docs/providers/do/index.html
*/

resource "digitalocean_droplet" "droplet" {
  image    = "${var.image_list[var.image_index]}"
  name     = "${var.droplet_name}"
  region   = "${var.region_list[var.region_index]}"
  size     = "${var.size_list[var.size_index]}"
  ssh_keys = [digitalocean_ssh_key.ssh_key.fingerprint]

  tags = "${var.tags}"
  backups = "${var.backups}"
  monitoring = "${var.monitoring}"
  ipv6 = "${var.ipv6}"
  private_networking = "${var.private_networking}"
  resize_disk = "${var.resize_disk}"

  /*
  *   Provisioner Connection
  *   https://www.terraform.io/docs/provisioners/connection.html
  */
  
  connection {
      user = "${var.connection_user}"
      type = "${var.connection_type}"
      private_key = file("${var.ssh_private_key}")
      timeout = "${var.connection_timeout}"
  }
}