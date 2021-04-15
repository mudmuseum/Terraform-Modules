resource "aws_route_table" "public_route" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.route_table_public_cidr_block
    gateway_id = var.internet_gateway_id
  }

  route {
    ipv6_cidr_block = var.route_table_ipv6_public_cidr_block
    gateway_id      = var.internet_gateway_id
  }

  tags = var.tags
}
