variable "vpc_id" {
  type        = string
  description = "ID of the VPC to attach the IGW"
}

variable "name" {
  type        = string
  description = "Name tag prefix for the IGW"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags for the IGW"
}
