variable "vpc_id" {
  description = "The ID of the VPC in which the security group will be created"
  type        = string
}

variable "sg_name" {
  description = "The name of the security group"
  type        = string
}

variable "tags" {
  description = "Tags to associate with the security group"
  type        = map(string)
  default     = {}
}

variable "ingress_rules" {
  description = "A list of ingress rules for the security group"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = []
}

variable "egress_rules" {
  description = "A list of egress rules for the security group"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = []
}
