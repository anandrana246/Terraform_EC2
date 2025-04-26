variable "vpc_cidr" { 
  default = "10.0.0.0/16" 
}

variable "vpc_name" { 
  default = "prod_vpc" 
}

variable "tags" {
  default = {
    Project     = "VPC_EC2_Infra"
    Environment = "prod"
  }
}

variable "pvt_aviablilty_zone" { 
  default = "us-east-1a" 
}

variable "pvt_sub_cidr" { 
  default = "10.0.1.0/24" 
}

variable "pvt_subnet_name" { 
  default = "Prod_pvt_subnet" 
}

variable "pub_aviablilty_zone" { 
  default = "us-east-1b" 
}

variable "pub_sub_cidr" { 
  default = "10.0.2.0/24" 
}

variable "pub_subnet_name" { 
  default = "Prod_pub_subnet" 
}

variable "igw_name" { 
  default = "prod_igw" 
}

variable "rt_name" {
  default = "public_route_table"
}

# Public Security Group

variable "public_sg_name" {
  default = "public_sg"
}

variable "public_ingress_rules" {
  description = "Ingress rules for Public Security Group"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}

variable "public_egress_rules" {
  description = "Egress rules for Public Security Group"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}

# Private Security Group
variable "private_sg_name" {
  description = "Private Security Group Name"
  type        = string
  default     = "private-sg"
}

variable "private_ingress_rules" {
  description = "Ingress rules for Private Security Group"
  type = list(object({
    from_port        = number
    to_port          = number
    protocol         = string
    cidr_blocks      = optional(list(string))
    security_groups  = optional(list(string))
    description      = optional(string)
  }))
  default = [
    {
      from_port   = 3306
      to_port     = 3306
      protocol    = "tcp"
      cidr_blocks = ["10.0.0.0/16"]
    },
    {
      from_port   = -1
      to_port     = -1
      protocol    = "icmp"
      cidr_blocks = ["10.0.0.0/16"]
    },
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["10.0.0.0/16"]
    }
  ]
}

variable "private_egress_rules" {
  description = "Egress rules for Private Security Group"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}

variable "public_ami" { 
  default = "ami-0e449927258d45bc4"
}

variable "public_Instance_Type" {
  default = "t2.micro"
}

variable "Public_instance_name" {
  default = "public_instance_1"
}

variable "public_key_name" {
  default = "kube-demo"
}

variable "associate_public_ip" {
  default = true
}

variable "private_ami" {
  default = "ami-0e449927258d45bc4"
}

variable "private_Instance_Type" {
  default = "t2.micro"
}

variable "private_instance_name" {
  default = "private_instance_1"
}

variable "private_key_name" {
  default = "kube-demo"
}


