variable "name" {
    type = string
    description = "nNme of the load balancer"
}
variable "subnets" { 
    type = list(string)
    description = "List of subnet IDs"
}
variable "security_groups" { 
    type = list(string)
    description = "List of security group IDs associate with load balancer"
}
variable interval {
    type = bool
    description = "A boolean that defines whether the load balancer is internal (private) or internet-facing (public)."
    default = false
}
variable "load_balancer_type" {
  type = string
  description = "Type of load balancer"
}
variable "api_name" {
    type = string
    description = "Name of the API"
}
variable "protocol_type" {
  type = string
  description = "Define the protocol type"
}

variable "ami" {
    type = string
    description = "Defines the base OS of image"
}
variable "instance_type" {
    type = string
    description = "Define the hardware configuration of the instance"
}
variable "subnet_id" {
    type = string
    description = "Specifies which subnet the ec2 instance launch"
}
variable "security_group_ids" { 
    type = list(string)
    description = "List of security groups IDs attached to the instance"
}
variable "instance_name" {
    type = string
    description = "Defines the instance name"
}
variable "function_name" {
    type = string
    description = "Defines the lambda function name"
}
variable "handler" {
    type = string
    description = "Specifies the entry point of lambda code"
}
variable "runtime" {
    type = string
    description = "Defines the language and version for the lambda runtime"
}
variable "role_arn" {
    type = string
    description = "Defines the IAM role"
}
variable "filename" {
    type = string
    description = "Defines the path to the zip file that consists of lambda function code"
}
variable "allocated_storage" {
  type        = number
  description = "The amount of storage (in GB) to allocate for the DB instance"
}

variable "engine" {
  type        = string
  description = "The database engine to use (e.g., mysql, postgres, oracle-ee)"
}

variable "engine_version" {
  type        = string
  description = "The version of the database engine"
}

variable "instance_class" {
  type        = string
  description = "The instance type of the RDS (e.g., db.t3.micro)"
}

variable "db_name" {
  type        = string
  description = "The name of the initial database to create"
}

variable "username" {
  type        = string
  description = "username for the database"
}

variable "password" {
  type        = string
  description = "password for the database"
  sensitive   = true
}

variable "sg_id" {
  type        = string
  description = "Security Group ID to associate with the RDS instance"
}

variable "subnet_group_name" {
  type        = string
  description = "Name of the DB subnet group for the RDS instance"
}

variable "skip_final_snapshot" {
  type        = bool
  description = "Whether to skip final snapshot before DB deletion"
  default = true
}
variable "domain_name" {
    type = string
    description = "Defines the domain name"
}
variable "bucket_name" {
    type = string
    description = "Defines the Bucket name"
}
variable "vpc_id" {
    type = string
    description = "Specifies the vpc id where security group should be created"
}
variable "sg_name" {
    type = string
    description = "defines the name of security group"
}
variable "vpc_cidr" {
    type = string
    description = "CIDR block for the vpc"
}
variable "vpc_name" {
    type = string
    description = "Tag name for the vpc resource"
}
variable "vpc_id" {
  type = string
  description = "VPC ID where IGW, NAT, and route tables will be created"
}

variable "igw_name" {
  type = string
  description = "Name for the Internet Gateway"
}

variable "eip_allocation_id" {
  type = string
  description = "Elastic IP allocation ID for NAT Gateway"
}

variable "public_subnet_id" {
  type = string
  description = "Subnet ID for placing the NAT Gateway"
}

variable "nat_name" {
  type = string
  description = "Name for the NAT Gateway"
}