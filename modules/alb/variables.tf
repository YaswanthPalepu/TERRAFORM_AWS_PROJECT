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