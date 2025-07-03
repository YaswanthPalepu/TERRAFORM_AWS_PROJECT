variable "vpc_id" {
  type        = string
  description = "ID of the VPC to attach the Internet Gateway to"
}

variable "igw_name" {
  type        = string
  description = "Name tag for the Internet Gateway"
}
