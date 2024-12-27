
resource "aws_instance" "webserver" {
  ami           = var.ami
  instance_type = var.instance_type

  # add subnet
  subnet_id = aws_subnet.subnet.subnet_id

  # add internet gateway

  # add sg for ec2
  security_groups = [aws_security_group.sg.name]

  # add public key for ec2
  key_name = aws_key_pair.public_key.key_name

  tags = {
    Terraform   = "true"
    Name        = var.instance_name
    Environment = var.Environment
  }
}

output "instance_id" {
  value = aws_instance.webserver.id
}
# Create eip
resource "aws_eip" "lb" {
  instance = aws_instance.webserver.id
}
# Show public IP address
# terraform output eip
# facultative
output "eip" {
  value = aws_eip.lb.public_ip
}





