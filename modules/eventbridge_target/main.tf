resource "aws_cloudwatch_event_target" "cloudwatch_event_target" {
#   target_id = var.rule_name
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
      key    = run_command_targets.key
      value  = [ run_command_targets.value ]
    }
  }
}
