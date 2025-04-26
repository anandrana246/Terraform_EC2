resource "aws_subnet" "this" {
    vpc_id = var.vpc_id
    availability_zone = var.pub_avialbility_zone
    cidr_block = var.pub_sub_cidr
    assign_ipv6_address_on_creation = false
    
    tags = merge({
        Name = var.pub_subnet_name
    }, var.tags)
}