resource "aws_ecr_repository" "ecr_repository" {
  count                = length(var.repositories)

  name                 = var.repositories[count.index].name
  image_tag_mutability = "IMMUTABLE"

  encryption_configuration {
    encryption_type    = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = true
  }

  tags                 = var.repositories[count.index].tags
}
