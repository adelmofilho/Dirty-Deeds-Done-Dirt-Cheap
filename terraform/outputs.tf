output "instance_name" {
  value = digitalocean_droplet.droplet.name
  description = "Nome da instância."
  sensitive   = false
}

output "instance_image" {
  value = digitalocean_droplet.droplet.image
  description = "Imagem da instância."
  sensitive   = false
}

output "instance_ip_address" {
  value = digitalocean_droplet.droplet.ipv4_address
  description = "Endereço de IP da instância."
  sensitive   = false
}

output "instance_status" {
  value = digitalocean_droplet.droplet.status
  description = "Status da instância."
  sensitive   = false
}