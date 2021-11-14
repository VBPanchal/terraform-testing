output "subnet1_id" {
  description = "Public IP address of the EC2 instance"
  value       = aws_subnet.subnet1.id
}

output "main_vpc_id" {
  description = "ID of the main VPC"
  value       = aws_vpc.main_vpc.id
}
