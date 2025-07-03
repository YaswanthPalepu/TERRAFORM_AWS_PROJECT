variable "eip_allocation_id" {
  type        = string
  description = "Elastic IP Allocation ID for the NAT Gateway"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID where NAT Gateway is launched (should be a public subnet)"
}

variable "nat_name" {
  type        = string
  description = "Name tag for the NAT Gateway"
}
