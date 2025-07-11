resource "aws_instance" "this" {
  count = var.instance_count

  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_ids[count.index]
  key_name                    = var.key_name
  associate_public_ip_address = var.associate_public_ip
  vpc_security_group_ids      = var.security_group_ids

  tags = merge(var.tags, {
    Name = "${var.name}-${count.index}"
  })

  root_block_device {
    volume_size = var.root_volume_size
    volume_type = var.root_volume_type
    delete_on_termination = true
  }

  lifecycle {
    create_before_destroy = true
  }
}
