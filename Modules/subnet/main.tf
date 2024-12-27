resource "aws_subnet" "main" {
  availability_zone = var.az 

  vpc_id     = aws_vpc.main.vpc_id
  cidr_block = var.subnet_cidr_block

  tags = {
    Name = "subnet-${var.instance_name}"
  }
}