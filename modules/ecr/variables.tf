variable "name" {
  type        = string
  description = "Name of the ECR repository"
}

variable "image_tag_mutability" {
  type        = string
  default     = "MUTABLE"
  description = "Tag mutability: MUTABLE or IMMUTABLE"
}

variable "scan_on_push" {
  type        = bool
  default     = true
  description = "Enable image scanning on push"
}

variable "encryption_type" {
  type        = string
  default     = "AES256"
  description = "Encryption type: AES256 or KMS"
}

variable "kms_key" {
  type        = string
  default     = ""
  description = "KMS key ARN if using KMS encryption"
}

variable "force_delete" {
  type        = bool
  default     = true
  description = "Force delete repository even if images exist"
}

variable "lifecycle_rule_priority" {
  type        = number
  default     = 1
  description = "Priority of the lifecycle rule"
}

variable "lifecycle_description" {
  type        = string
  default     = "Remove untagged images after limit"
}

variable "lifecycle_count" {
  type        = number
  default     = 10
  description = "Number of untagged images to retain"
}

variable "tags" {
  type    = map(string)
  default = {}
}
