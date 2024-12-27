# variables within the ec2 Module
instance_name = "web-server"
ami           = "ami-09be70e689bddcef5"
Environment   = "dev"
instance_type = "t2.micro"

# variables
region = "eu-west-3"
availability_zone       = "us-east-1a"


# vpc module
vpc_name = "vpc-webserver"
vpc_cidr_block = "10.0.0.O/16"


# subnet module
subnet_name           = "subnet-web"
subnet_cidr_block      = "10.0.0.0/24"