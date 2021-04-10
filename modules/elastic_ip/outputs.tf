output "elastic_ip" {
  description = "Public IP (EIP) assigned to the EC2 instance."
  value = aws_eip.elastic_ip.public_ip
}
