# variable "rule_name" {
#   description = "The name of the Rule for the EventBridge target."
# }

variable "arn" {
  description = "The ARN for the document to execute, i.e. the arn of AWS-RunShellScript."
}

variable "input_paths" {
  description = "The input transformation."
}

variable "input_template" {
  description = "The template used by the associated document."
}

variable "rule" {
  description = "The EventBridge Event Rule Name."
}

variable "role_arn" {
  description = "AWS IAM Role ARN."
}

variable "run_command_targets" {
  description = "The Key:Values for the targets of the Run Command execution."
  type        = list
}
