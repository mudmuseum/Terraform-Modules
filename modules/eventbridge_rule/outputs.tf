output "name" {
  description = "The name of the EventBridge Rule."
  value       = aws_cloudwatch_event_rule.cloudwatch_event_rule.name 
}
