variable "aws_region" {
  type    = string
}

variable "vpc_cidr" {}
variable "vpc_name" {}
variable "instance_tenancy" {
  type    = string
  default = "default"
}

variable "availability_zones" {
  type = list(string)
}

variable "public_subnet_cidrs" {
  type = list(string)
}

variable "private_subnet_cidrs" {
  type = list(string)
}

variable "tags" {
  type    = map(string)
}
variable "ami_id" {}
variable "instance_type" {}
variable "public_sg_ingress" {
  description = "Ingress rules for public EC2 SG"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
    description = optional(string)
  }))
}

variable "public_sg_egress" {
  description = "Egress rules for public EC2 SG"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
    description = optional(string)
  }))
}

variable "bucket_name" {}
variable "s3_force_destroy" {
  type    = bool
  default = false
}
variable "s3_versioning" {
  type    = bool
  default = false
}
variable "s3_encryption" {
  type    = string
  default = "AES256"
}
variable "s3_kms_key_id" {
  default = ""
}
variable "s3_lifecycle_id" {
}
variable "s3_lifecycle_days" {
  default = 30
}
variable "s3_noncurrent_expire_days" {
  default = 60
}

variable "ecr_name" {}
variable "image_tag_mutability" {
  default = "MUTABLE"
}
variable "scan_on_push" {
  default = true
}
variable "encryption_type" {
}
variable "kms_key" {

}
variable "force_delete" {
}
variable "lifecycle_rule_priority" {
  default = 1
}
variable "lifecycle_description" {
  default = "Remove untagged images after limit"
}
variable "lifecycle_count" {
  default = 10
}
variable "cluster_name" {}
variable "endpoint_public_access" {
  default = true
}
variable "endpoint_private_access" {
  default = false
}
variable "service_ipv4_cidr" {
  default = "172.20.0.0/16"
}

variable "algorithm" {
  description = "type of algorithm using"
  type = string
}
variable "rsa_bits" {
  description = "number of bits for algorithm"
  type = number
}
variable "filename" {
  description = "name of the file"
  type = string
}
variable "key_name" {
  description = "name of the key to generate"
  type = string
}
