variable "token" {
    type = string
    description = "Digital Ocean API Token."
}

variable "api_endpoint" {
    type = string
    description = "base URL for DigitalOcean API requests."
}

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

variable "ssh_public_key" {
    type = string
    description = "Relative path of public ssh key."
}

variable "ssh_private_key" {
    type = string
    description = "Relative path of private ssh key."
}

variable "ssh_key_name" {
    type = string
    description = "Name of exported ssh key."
}

variable "tags" {
    type = list(string)
    description = "Relative path of ssh keys."
}

variable "backups" {
    type = bool
    description = "Relative path of ssh keys."
}

variable "monitoring" {
    type = bool
    description = "Relative path of ssh keys."
}

variable "ipv6" {
    type = bool
    description = "Relative path of ssh keys."
}

variable "private_networking" {
    type = bool
    description = "Relative path of ssh keys."
}

variable "resize_disk" {
    type = bool
    description = "Relative path of ssh keys."
}

variable "connection_user" {
    type = string
    description = "Name of exported ssh key."
}

variable "connection_type" {
    type = string
    description = "Name of exported ssh key."
}

variable "connection_timeout" {
    type = string
    description = "Name of exported ssh key."
}