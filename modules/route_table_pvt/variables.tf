variable "vpc_id" {
    description = "VPC id for pvt route table"
    type = string
}

variable "tags" {
    description = "tags for pvt route table"
    type = map(string)
}

variable "route_table_name" {
    description = "Name for pvt route table"
    type = string
}