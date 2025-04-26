variable "vpc_id" {
    description = "VPC ID for IgW"
    type = string 
}

variable "tags" {
    description  = "Tags for IGW"
    type = map(string)
}

variable "igw_name" {
    description= "Name for Igw"
    type = string
}