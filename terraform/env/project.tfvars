/*
*   Droplet identification related Arguments
*   https://www.terraform.io/docs/providers/do/r/droplet.html
*/

tags         = ["production", "standalone-server"]
droplet_name = "Black-Scaled-Earth-Dragon"

/*
*   SSH related Arguments
*   https://www.terraform.io/docs/providers/do/d/ssh_key.html
*/

ssh_key_name    = "Ten-Thousand-Demonic-Beast-Array"
ssh_public_key  = "../credentials/id_rsa.pub"
ssh_private_key = "../credentials/id_rsa"

/*
*   Connection related Arguments
*   https://www.terraform.io/docs/provisioners/connection.html
*/

connection_user    = "root" 
connection_type    = "ssh"
connection_timeout = "1m"

/*
*   Selected size, image and region based on provider's list
*   See provider.tfvars to catch index order
*   https://developers.digitalocean.com/documentation/v2/#introduction
*/

size_index   = 1
image_index  = 18
region_index = 5

/*
*   Optional digitalocean_droplet Arguments
*   https://www.terraform.io/docs/providers/do/r/droplet.html
*/

ipv6               = false
backups            = false
monitoring         = false
resize_disk        = false
private_networking = false