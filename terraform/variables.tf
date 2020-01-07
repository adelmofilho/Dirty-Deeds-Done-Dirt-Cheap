variable "token" {
    type = string
    description = "Digital Ocean API Token."
}

variable "base_image" {
    type = string
    description = "Droplet base image."
}

variable "region_list" {
    type = list
    description = "List of datacenter region."
}
