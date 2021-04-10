data "aws_ami" "ami" {
  most_recent = true

  filter {
    name   = "name"
    values = [ var.filter_name ]
  }

  filter {
    name   = "virtualization-type"
    values = [ var.virtualization_type ]
  }

  owners = [ var.owners ]
}

resource "aws_instance" "ec2_instance" {
  ami                         = data.aws_ami.ami.id
  instance_type               = var.instance_type
  associate_public_ip_address = var.associate_public_ip_address
  key_name                    = var.key_name
  vpc_security_group_ids      = [var.security_group_id]
  subnet_id                   = var.subnet_id
  availability_zone           = var.availability_zone
  iam_instance_profile        = var.iam_instance_profile

  root_block_device {
    volume_size = var.root_block_device_volume_size
    volume_type = var.root_block_device_volume_type
    encrypted = true
  }
}
