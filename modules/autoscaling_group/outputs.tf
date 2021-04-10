output "name" {
  description = "ASG name"
  value       = aws_autoscaling_group.autoscaling_group.id
}
