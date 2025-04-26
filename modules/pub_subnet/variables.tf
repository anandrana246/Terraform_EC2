variable "pub_sub_cidr" {
    description = "Cidr block for public subnet"
    type = string 
}

variable "vpc_id" {
    description = "VPC ID"
    type = string
}

variable "pub_avialbility_zone" {
    description = "Aviability zone for Public subnet"
    type = string
}

variable "pub_subnet_name" {
    description = "Public subnet name"
    type = string
}

variable "tags" {
    description = "Description for the subnet"
    type = map(string)
    default = {}
}