# EC2 Module Variable

variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
}

variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "Environment" {
  description = "Name of the environment"
  type        = string
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
}


# this variable is used to define the region where the resources will be created
# is difine in the prvider
variable "region" {
  description = "AWS region for the EC2 instance"
  type        = string
}

# vpc Module
variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}





