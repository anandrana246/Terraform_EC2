resource "aws_route" "this" {
    destination_cidr_block = var.destination_cidr_block
    route_table_id = var.route_table_id
    gateway_id = var.gateway_id
}