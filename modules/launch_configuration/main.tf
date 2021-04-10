resource "aws_launch_configuration" "asg-lc-ec2" {
  name_prefix                 = var.lc_name
  image_id                    = var.image_id
  instance_type               = var.instance_type
  associate_public_ip_address = var.associate_public_ip_address
  key_name                    = var.key_name
  security_groups             = [var.security_group_id]

  root_block_device {
    volume_size = var.root_block_device_volume_size
    volume_type = var.root_block_device_volume_type
    encrypted = true
  }

  lifecycle {
    create_before_destroy = true
  }
}
