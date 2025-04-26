# Internet Gateway
module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  vpc_name = var.vpc_name
  tags     = var.tags
}


# Public subnet
module "public_subnet" {
  source               = "./modules/pub_subnet"
  vpc_id               = module.vpc.vpc_id
  pub_sub_cidr         = var.pub_sub_cidr
  pub_avialbility_zone = var.pub_aviablilty_zone
  pub_subnet_name      = var.pub_subnet_name
}

# Private subnet
module "private_subnet" {
  source              = "./modules/pvt_subnet"
  vpc_id              = module.vpc.vpc_id
  pvt_sub_cidr        = var.pvt_sub_cidr
  pvt_aviablilty_zone = var.pvt_aviablilty_zone
  pvt_subnet_name     = var.pvt_subnet_name
}

# Internet Gateway
module "igw" {
  source   = "./modules/igw"
  vpc_id   = module.vpc.vpc_id
  igw_name = var.igw_name
  tags     = var.tags
}

# Public Route Table
module "public_route" {
  source = "./modules/route_table_pub"
  vpc_id = module.vpc.vpc_id
  tags = var.tags
  internet_gateway_id = module.igw.igw_id 
  route_table_name = var.rt_name  
}

# Route table association for public subnet
module "public_route_table_association" {
  source = "./modules/route_table_pub_association"
  subnet_id = module.public_subnet.pub_subnet_id
  route_table_id = module.public_route.pub_route_table_ID
}

# Public Security Group
module "public_security_group" {
  source = "./modules/security_group_pub"
  vpc_id = module.vpc.vpc_id
  sg_name = var.public_sg_name
  tags = var.tags
  ingress_rules = var.public_ingress_rules
  egress_rules = var.public_egress_rules
}

# Private Security Group
# Private Security Group
module "private_security_group" {
  source                  = "./modules/security_group_pvt"
  vpc_id                  = module.vpc.vpc_id
  sg_name                 = var.private_sg_name
  tags                    = var.tags
  ingress_rules           = var.private_ingress_rules
  egress_rules            = var.private_egress_rules
  public_security_group_id = module.public_security_group.security_group_id  # ✅ fixed
}

# public_EC2_instances

module "public_EC2_instances" {
  source = "./modules/ec2_instance"
  ami = var.public_ami
  instance_type = var.public_Instance_Type
  subnet_id = module.public_subnet.pub_subnet_id
  key_name = var.public_key_name
  security_group_id = module.public_security_group.security_group_id
  associate_public_ip =  var.associate_public_ip
  instance_name = var.Public_instance_name
  tags = var.tags
}

module "private_EC2_instances" {
  source = "./modules/ec2_instance"
  ami = var.private_ami
  instance_type = var.private_Instance_Type
  subnet_id = module.private_subnet.pvt_subnet_id
  security_group_id = module.private_security_group.security_group_id
  key_name = var.private_key_name
  associate_public_ip = false
  instance_name = var.private_instance_name
  tags = var.tags
}
