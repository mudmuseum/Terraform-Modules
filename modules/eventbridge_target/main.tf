resource "aws_cloudwatch_event_target" "cloudwatch_event_target" {
  target_id = var.rule_name
#   arn       = "arn:aws:ssm:${var.aws_region}::document/AWS-RunShellScript"
  arn       = var.arn
#   input     = "{\"commands\":[\"halt\"]}"
  input     = var.input
#  rule      = aws_cloudwatch_event_rule.stop_instances.name
  rule      = var.rule
#   role_arn  = aws_iam_role.ssm_lifecycle.arn
  role_arn  = var.role_arn

  dynamic "run_command_targets" {
    for_each = var.run_command_targets
    content {
      key    = run_command_targets.key
      value  = [ run_command_targets.value ]
    }
  }

#   run_command_targets {
#     key    = "tag:Terminate"
#     values = ["midnight"]
#   }
}
