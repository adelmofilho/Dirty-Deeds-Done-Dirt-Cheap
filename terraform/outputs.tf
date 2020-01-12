/*
*   Output variables
*   https://www.terraform.io/docs/configuration/outputs.html
*   https://www.terraform.io/docs/providers/do/r/droplet.html
*/

output "instance_name" {
  value = digitalocean_droplet.droplet.name
  description = "The name of the Droplet."
  sensitive   = false
}

output "instance_image" {
  value = digitalocean_droplet.droplet.image
  description = "The image of the Droplet."
  sensitive   = false
}

output "instance_ip_address" {
  value = digitalocean_droplet.droplet.ipv4_address
  description = "The IPv4 address."
  sensitive   = false
}

output "instance_status" {
  value = digitalocean_droplet.droplet.status
  description = "The status of the Droplet."
  sensitive   = false
}