variable "ami_id" {
  type        = string
  description = "AMI ID to use for EC2 instances"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}

variable "key_name" {
  type        = string
  description = "SSH key pair name"
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of subnet IDs (public or private)"
}

variable "associate_public_ip" {
  type        = bool
  description = "Whether to associate a public IP"
  default     = false
}

variable "security_group_ids" {
  type        = list(string)
  description = "List of security group IDs"
}

variable "instance_count" {
  type        = number
  description = "Number of instances to launch"
  default     = 1
}

variable "root_volume_size" {
  type        = number
  default     = 20
  description = "Root volume size in GB"
}

variable "root_volume_type" {
  type        = string
  default     = "gp3"
  description = "Root volume type"
}

variable "name" {
  type        = string
  description = "Name prefix for instances"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Common resource tags"
}
