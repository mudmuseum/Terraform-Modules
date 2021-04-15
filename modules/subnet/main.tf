resource "aws_subnet" "public_subnet" {
  vpc_id            = var.vpc_id
  cidr_block        = var.public_subnet_cidr_block
  availability_zone = var.public_subnet_availability_zone

  tags = var.tags
}
