variable "vpc_cidr" {
    description = "cidr block for vpc"
    type = string
}

variable "vpc_name" {
    description = "name for the vpc"
    type = string
}

variable "tags" {
    description = "tags for vpc"
    type = map(string)  
}