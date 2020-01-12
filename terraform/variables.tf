/*
*   DigitalOcean Provider Settings 
*   https://www.terraform.io/docs/providers/do/index.html
*/

variable "token" {
    type = string
    description = "DigitalOcean API Token."
}

variable "api_endpoint" {
    type = string
    description = "DigitalOcean API requests Base URL."
}

/*
*   digitalocean_ssh_key Data Source Settings 
*   https://www.terraform.io/docs/providers/do/index.html
*/

variable "ssh_public_key" {
    type = string
    description = "Public ssh key relative path"
}

variable "ssh_key_name" {
    type = string
    description = "Exported ssh key name."
}

/*
*   digitalocean_droplet Resource Settings 
*   https://www.terraform.io/docs/providers/do/index.html
*/

variable "region_list" {
    type = list(string)
    description = "List of datacenter region."
}

variable "region_index" {
    type = number
    description = "Index of selected region."
}

variable "image_list" {
    type = list(string)
    description = "List of available images."
}

variable "image_index" {
    type = number
    description = "Index of selected image."
}

variable "size_list" {
    type = list(string)
    description = "List of available instance sizes."
}

variable "size_index" {
    type = number
    description = "Index of selected instance size."
}

variable "droplet_name" {
    type = string
    description = "Instance Name."
}

variable "ssh_private_key" {
    type = string
    description = "Private ssh key relative path."
}

variable "tags" {
    type = list(string)
    description = "A list of the tags to be applied to this Droplet."
}

variable "backups" {
    type = bool
    description = "Boolean controlling if backups are made."
}

variable "monitoring" {
    type = bool
    description = "Boolean controlling whether monitoring agent is installed."
}

variable "ipv6" {
    type = bool
    description = "Boolean controlling if IPv6 is enabled."
}

variable "private_networking" {
    type = bool
    description = "Boolean controlling if private networks are enabled."
}

variable "resize_disk" {
    type = bool
    description = "Boolean controlling whether to increase the disk size when resizing a Droplet."
}

/*
*   Provisioner Connection Settings 
*   https://www.terraform.io/docs/provisioners/connection.html
*/

variable "connection_user" {
    type = string
    description = "The user that we should use for the connection. Defaults to root when using type ssh and defaults to Administrator when using type winrm."
}

variable "connection_type" {
    type = string
    description = "The connection type that should be used. Valid types are ssh and winrm"
}

variable "connection_timeout" {
    type = string
    description = "The timeout to wait for the connection to become available."
}