resource "aws_security_group" "sg" {
  name        = "sg-${var.instance_name}"
  description = "Security group for ${var.instance_name}"

  vpc_id = aws_vpc.main.id

  # inbound (all)
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  # outbound (all)
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name  = "sg-${var.instance_name}"
    Allow = "all"
  }
}