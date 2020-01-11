output "instance_name" {
  value = digitalocean_droplet.droplet.name
  description = "Retorna o nome da instância."
  sensitive   = false
}

output "instance_image" {
  value = digitalocean_droplet.droplet.image
  description = "retorna a imagem da instância."
  sensitive   = false
}

output "instance_ip_address" {
  value = digitalocean_droplet.droplet.ipv4_address
  description = "Retorna o endereço de IP da instância."
  sensitive   = false
}

output "instance_status" {
  value = digitalocean_droplet.droplet.status
  description = "Retorna o status da instância."
  sensitive   = false
}