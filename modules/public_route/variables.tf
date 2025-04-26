variable "destination_cidr_block" {
    description = "Destination cidr block for this route"
    type = string 
}

variable "route_table_id" {
    description = "route table id for this route"
    type = string
}

variable "gateway_id" {
    description = "gateway id for public route"
    type = string
}