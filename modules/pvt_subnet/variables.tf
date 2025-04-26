variable "pvt_subnet_name" {
    description = "Name for private subnet"
    type = string
}

variable "pvt_sub_cidr" {
    description = "CIDR block fro private subnet"
    type = string
}

variable "pvt_aviablilty_zone" {
    description = "AViability zone for private subnet"
    type = string
}

variable "vpc_id" {
    description = "VPC ID for pvt subnet"
    type = string
}

variable "tags" {
    description = "Tags for pvt subnet"
    type = map(string)
    default = {}
}