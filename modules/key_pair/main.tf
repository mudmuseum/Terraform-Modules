resource "aws_key_pair" "ec2_instance" {
  key_name   = var.key_name
  public_key = var.public_key
}
