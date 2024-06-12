output "instance_id" {
  description = "ID of the recent EC2 instance"
  value       = aws_instance.a_simple_testing_12-06-2024.id
}

output "instance_public_ip" {
  description = "Public IP address of the recent EC2 instance"
  value       = aws_instance.a_simple_testing_12-06-2024.public_ip
}

output "instance_public_dns" {
  description = "Public DNS address of the recent EC2 instance"
  value       = aws_instance.a_simple_testing_12-06-2024.public_dns
}
