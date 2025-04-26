resource "aws_subnet" "this" {
    vpc_id = var.vpc_id
    cidr_block = var.pvt_sub_cidr
    availability_zone = var.pvt_aviablilty_zone
    assign_ipv6_address_on_creation = false

    tags = merge({
        Name = var.pvt_subnet_name
    }, var.tags)
}