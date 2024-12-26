module "vpc" {
  source  = "../Modules/vpc"
  
  cidr_block = var.cidr_block

}

module "ec2_instance" {
  source  = "../Modules/ec2"

  instance_name = var.instance_name
  ami = var.ami
  Environment = var.Environment
  instance_type = var.instance_type
  vpc_id = module.vpc.vpc_id
  
}

module "security_groups" {
  source = "../Modules/sg"

   instance_name = var.instance_name
}


