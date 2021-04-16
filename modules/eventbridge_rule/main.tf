resource "aws_cloudwatch_event_rule" "cloudwatch_event_rule" {
  name          = var.name
  description   = var.description

  event_pattern = var.pattern

#   role_arn      = var.role_arn
  tags          = var.tags
}

#  event_pattern = <<PATTERN
#{
#  "source": [
#    "aws.autoscaling"
#  ],
#  "detail-type": [
#    "EC2 Instance Launch Successful",
#    "EC2 Instance Terminate Successful",
#    "EC2 Instance Launch Unsuccessful",
#    "EC2 Instance Terminate Unsuccessful"
#  ]
#}
#PATTERN
#}
