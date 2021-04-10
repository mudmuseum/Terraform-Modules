resource "aws_eip" "elastic_ip" {
  instance = var.ec2_instance
}
