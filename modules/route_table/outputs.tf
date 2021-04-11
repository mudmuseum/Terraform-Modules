output "public_route_table_id" {
  description = "The Public Route Table ID."
  value       = aws_route_table.public_route.id
}
