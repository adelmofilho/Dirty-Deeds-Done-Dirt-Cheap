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
