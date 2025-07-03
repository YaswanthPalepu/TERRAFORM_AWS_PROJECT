resource "aws_db_instance" "main" {
  allocated_storage    = var.allocated_storage
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  db_name              = var.db_name
  username             = var.username
  password             = var.password
  skip_final_snapshot  = var.skip_final_snapshot
  vpc_security_group_ids = [var.sg_id]
  db_subnet_group_name   = var.subnet_group_name
}
