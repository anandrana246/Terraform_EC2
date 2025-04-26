variable "vpc_id" {}
variable "sg_name" {}
variable "tags" {}

variable "ingress_rules" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "egress_rules" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "public_security_group_id" {
  description = "The ID of the public security group"
  type        = string
}
