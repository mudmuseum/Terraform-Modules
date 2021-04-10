variable "lc_name" {
  description = "The name for the Launch Configuration."
  default     = "lc-mudmuseum_com"
}

variable "image_id" {
  description = "The Image ID for the EC2 instance launched via ASG-LT."
  default     = "ami-015f1226b535bd02d"
}

variable "instance_type" {
  description = "The instance type."
  default     = "t4g.micro"
}

variable "associate_public_ip_address" {
  description = "Choose whether to associate a public ip or not."
  default     = false
}

variable "key_name" {
  description = "The name of the public key for accessing the EC2 instance."
  default     = "ec2-mudmuseum_com"
}

variable "security_group_id" {
  description = "The list of security group IDs to associate to the EC2 instance."
}

variable "root_block_device_volume_size" {
  description = "Volume size for root block volume."
  default     = "8"
}

variable "root_block_device_volume_type" {
  description = "Volume type for root block volume."
  default     = "gp2"
}
