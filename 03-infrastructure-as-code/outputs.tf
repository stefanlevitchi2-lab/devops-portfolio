output "instance_id" {
  description = "ID of the created EC2 instance"
  value       = aws_instance.web_server.id
}

output "security_group_id" {
  description = "ID of the web security group"
  value       = aws_security_group.web_sg.id
}