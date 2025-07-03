resource "aws_lb" "main" {
  name               = var.name
  internal           = var.interval
  load_balancer_type = var.load_balancer_type
  subnets            = var.subnets
  security_groups    = var.security_groups
}
