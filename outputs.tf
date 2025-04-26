output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_id" {
  value = module.public_subnet.pub_subnet_id
}

output "private_subnet_id" {
  value = module.private_subnet.pvt_subnet_id
}

output "internet_gateway_id" {
  value = module.igw.igw_id
}

output "public_route_table_id" {
  value = module.public_route.pub_route_table_ID
}

output "public_security_group_id" {
  value = module.public_security_group.security_group_id
}

output "private_security_group_id" {
  value = module.private_security_group.security_group_id
}

output "public_ec2_instance_id" {
  value = module.public_EC2_instances.instance_id
}

output "private_ec2_instance_id" {
  value = module.private_EC2_instances.instance_id
}

output "public_ec2_instance_public_ip" {
  value = module.public_EC2_instances.public_ip
}
