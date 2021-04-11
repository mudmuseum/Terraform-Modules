variable "ami" {
  description = "The AMI ID to use with the EC2 instance."
}

variable "instance_type" {
  description = "The instance type for the EC2 instance."
  default     = "t3a.micro"
}

variable "associate_public_ip_address" {
  description = "Choose whether to associate a public ip or not."
  default     = false
}

variable "key_name" {
  description = "The name of the public key for accessing the EC2 instance."
}

variable "security_group_id" {
  description = "The list of security group IDs to associate to the EC2 instance."
}

variable "subnet_id" {
  description = "Subnet ID for the EC2 instance."
}

variable "availability_zone" {
  description = "Availability Zone for the EC2 instance."
  default     = "us-east-1a"
}

variable "iam_instance_profile" {
  description = "Instance Profile for the EC2 instance."
  default     = ""
}

variable "root_block_device_volume_size" {
  description = "Volume size for root block volume."
  default     = "8"
}

variable "root_block_device_volume_type" {
  description = "Volume type for root block volume."
  default     = "gp2"
}

