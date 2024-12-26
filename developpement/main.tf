module "vpc" {
  source     = "../Modules/vpc"

  vpc_name   = var.vpc_name
  cidr_block = var.cidr_block
  
}

module "ec2_instance" {
  source = "../Modules/ec2"

  instance_name = var.instance_name
  ami           = var.ami
  Environment   = var.Environment
  instance_type = var.instance_type

}

module "security_groups" {
  source        = "../Modules/sg"

  instance_name = var.instance_name
}


