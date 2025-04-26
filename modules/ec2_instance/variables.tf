variable "ami" {
    description = "AMI ID for the EC2 instance"
    type = string
}

variable "instance_type" {
    description = "Type of Instance"
    type = string
}

variable "subnet_id" {
    description = "ID of subnet for EC2"
    type = string
}

variable "security_group_id" {
    description = "Security Group ID to attach"
    type = string
}

variable "associate_public_ip" {
  description = "Whether to associate a public IP"
  type        = bool
}

variable "key_name" {
  description = "Key Pair name for SSH"
  type        = string
}

variable "tags" {
  description = "Tags to assign to EC2 instance"
  type        = map(string)
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
}




