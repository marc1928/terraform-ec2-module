# variables within the ec2 Module

instance_name = "web-server"
ami = "ami-09be70e689bddcef5"
Environment = "dev"
instance_type = "t2.micro"

#variables within the provider

region = "eu-west-3"

# vpc module
cidr_block = var.cidr_block