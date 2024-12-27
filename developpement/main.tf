module "vpc" {
  source                 = "../Modules/vpc"


  vpc_cidr_block         = var.vpc_cidr_block
  vpc_name               = var.vpc_name
  
}
output "vpc_id" {
  value = module.vpc.id
}

module "subnet" {
  source                  = "./modules/subnet"
  vpc_id                  = module.vpc.vpc_id
  cidr_block              = var.subnet_cidr_block
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name                  = "subnet-${var.instance_name}"
    Environment           = var.Environment
  }
}
output "subnet_id" {
  value                   = module.subnet.id
}


module "ec2_instance" {
  source                  = "../Modules/ec2"

  instance_name           = var.instance_name
  ami                     = var.ami
  Environment             = var.Environment
  instance_type           = var.instance_type 
   
}

module "sg" {
  source        = "../Modules/sg"

  instance_name = var.instance_name

}


