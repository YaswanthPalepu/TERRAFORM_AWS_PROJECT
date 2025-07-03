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
