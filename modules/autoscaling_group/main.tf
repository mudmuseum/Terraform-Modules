resource "aws_autoscaling_group" "autoscaling_group" {
  availability_zones   = var.availability_zones
  name                 = var.asg_name
  desired_capacity     = var.desired_capacity
  max_size             = var.max_size
  min_size             = var.min_size
  launch_configuration = var.launch_configuration_name

  lifecycle {
    create_before_destroy = true
  }
}
