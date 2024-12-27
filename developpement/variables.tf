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

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}
variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

# subnet

variable "subnet_cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
}
variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
}
variable "availability_zone" {
  description = "availability zone for the subnet"
  type = string
}




