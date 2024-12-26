output "instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.webserver.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.webserver.public_ip
}

# Show public IP address
# terraform output eip
# facultative
output "eip" {
  value = aws_eip.lb.public_ip
}