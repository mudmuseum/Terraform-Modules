output "role_name" {
  description = "The AWS IAM Role name."
  value       = aws_iam_role.iam_role.name
}

output "role_arn" {
  description = "The AWS IAM Role ARN."
  value       = aws_iam_role.iam_role.arn
}
