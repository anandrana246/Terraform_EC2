variable "vpc_id" {
    description = "Value of VPC"
    type = string
}

variable "route_table_name" {
    description = "Name of public route table"
    type = string
}

variable "tags" {
    description = "Tags for route table"
    type = map(string)
}

variable "internet_gateway_id" {
  description = "ID of the Internet Gateway"
  type        = string
}