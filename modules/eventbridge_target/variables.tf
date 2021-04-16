variable "rule_name" {
  description = "The name of the Rule for the EventBridge target."
}

variable "arn" {
  description = "The ARN for the document to execute, i.e. the arn of AWS-RunShellScript."
}

variable "input" {
  description = "The commands block to input, e.g. {\"commands\":[\"echo hi\"]}"
}

variable "rule" {
  description = "The EventBridge Event Rule Name."
}

variable "role_arn" {
  description = "AWS IAM Role ARN."
}

variable "run_command_targets" {
  description = "The Key:Values for the targets of the Run Command execution."
  type        = map
}
