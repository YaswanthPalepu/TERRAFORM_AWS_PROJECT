variable "vpc_id" {
  type        = string
  description = "ID of the VPC"
}

variable "cidr_block" {
  type        = string
  description = "CIDR block for the route"
}

variable "gateway_id" {
  type        = string
  description = "ID of the Internet Gateway or NAT Gateway"
}

variable "rt_name" {
  type        = string
  description = "Name tag for the Route Table"
}
