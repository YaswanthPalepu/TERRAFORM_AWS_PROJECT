variable "name" {
  type        = string
  description = "Name of the security group"
}

variable "description" {
  type        = string
  default     = "Managed by Terraform"
  description = "Description of the security group"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID to associate the security group with"
}

variable "ingress_rules" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
    description = optional(string)
  }))
  description = "List of ingress rules"
}

variable "egress_rules" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
    description = optional(string)
  }))
  description = "List of egress rules"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags to apply to the security group"
}
