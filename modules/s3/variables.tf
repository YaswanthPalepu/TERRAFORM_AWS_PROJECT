variable "bucket_name" {
  type        = string
  description = "Unique name for the S3 bucket"
}

variable "force_destroy" {
  type        = bool
  default     = false
  description = "Force delete objects when bucket is destroyed"
}

variable "versioning_enabled" {
  type        = bool
  default     = true
  description = "Enable versioning"
}

variable "encryption_algorithm" {
  type        = string
  default     = "AES256"
  description = "SSE algorithm (AES256 or aws:kms)"
}

variable "kms_key_id" {
  type        = string
  default     = ""
  description = "KMS Key ID if using aws:kms"
}

variable "lifecycle_id" {
  type        = string
  default     = "expire-old-objects"
  description = "ID for the lifecycle rule"
}

variable "lifecycle_days" {
  type        = number
  default     = 30
  description = "Number of days to retain current versions"
}

variable "noncurrent_version_expiration_days" {
  type        = number
  default     = 60
  description = "Number of days to retain noncurrent versions"
}

variable "tags" {
  type    = map(string)
  default = {}
}
