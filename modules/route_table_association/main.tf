resource "aws_route_table_association" "public_1_route" {
  subnet_id      = var.public_subnet_id
  route_table_id = var.route_table_public_route_id
}
