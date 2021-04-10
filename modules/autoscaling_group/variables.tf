variable "availability_zones" {
  description = "The availability zones for the ASG."
  type        = list
  default     = [ "us-east-1a", "us-east-1b", "us-east-1c" ]
}

variable "asg_name" {
  description = "The name for the AutoScaling Group."
}

variable "desired_capacity" {
  description = "Desired capacity for the ASG."
  default     = "0"
}

variable "max_size" {
  description = "Desired maximum size for the ASG."
  default     = "0"
}

variable "min_size" {
  description = "Desired minimum size for the ASG."
  default     = "0"
}

variable "launch_configuration_name" {
  description = "Name of the Launch Configuration to associate to the ASG."
}
