variable "cluster_name" {
  type        = string
  description = "Name of the EKS cluster"
}

variable "cluster_role_arn" {
  type        = string
  description = "IAM role ARN for the EKS cluster"
}

variable "subnet_ids" {
  type        = list(string)
  description = "Public subnet IDs to associate with the EKS cluster"
}

variable "endpoint_public_access" {
  type        = bool
  default     = true
}

variable "endpoint_private_access" {
  type        = bool
  default     = false
}

variable "cluster_security_group_ids" {
  type        = list(string)
  default     = []
  description = "Security groups for the EKS control plane"
}

variable "service_ipv4_cidr" {
  type        = string
  default     = "172.20.0.0/16"
  description = "CIDR block for Kubernetes services"
}

variable "tags" {
  type        = map(string)
  default     = {}
}
