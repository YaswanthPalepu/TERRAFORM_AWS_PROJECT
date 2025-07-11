variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "igw_id" {
  type        = string
  description = "Internet Gateway ID"
}

variable "public_subnet_ids" {
  type        = list(string)
  description = "List of public subnet IDs"
}

variable "private_subnet_ids" {
  type        = list(string)
  description = "List of private subnet IDs"
}

variable "name" {
  type        = string
  description = "Prefix name for route tables"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Common resource tags"
}
