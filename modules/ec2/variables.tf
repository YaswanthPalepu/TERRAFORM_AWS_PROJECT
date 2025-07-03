
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
