resource "aws_cloudwatch_event_target" "cloudwatch_event_target" {
  target_id = var.target_id
  arn       = var.arn
  rule      = var.rule
  role_arn  = var.role_arn

  input_transformer {
    input_paths    = var.input_paths
    input_template = var.input_template
  }

  dynamic "run_command_targets" {
    for_each = var.run_command_targets
    content {
      key    = run_command_targets.value["tag_key"]
      values = run_command_targets.value["tag_value"]
    }
  }

  retry_policy {
    maximum_event_age_in_seconds = "86400"
    maximum_retry_attempts       = "0"
  }
}
