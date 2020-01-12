# ID vars

droplet_name = "Black-Scaled-Earth-Dragon"
tags = ["production", "standalone-server"]

# Connection 
ssh_key_name    = "Ten-Thousand-Demonic-Beast-Array"
ssh_public_key  = "../credentials/id_rsa.pub"
ssh_private_key = "../credentials/id_rsa"

connection_user   = "root" 
connection_type   = "ssh"
connection_timeout = "1m"


# Selection

image_index  = 18
region_index = 5
size_index = 1

# Adicional Arguments

backups = false
monitoring = false
ipv6 = false
private_networking = false
resize_disk = false