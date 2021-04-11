output "key_name" {
  description = "Key Pair name." 
  value       = aws_key_pair.ec2_instance.key_name
}
