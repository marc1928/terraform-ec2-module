variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
}

variable "region" {
  description = "AWS region for the EC2 instance"
  type        = string
}

variable "subnet_cidr_block" {
  description = "CIDR block for the subnet"
  type = string
}

variable "az" {
  description = "The availability zone for the Subnet"
  type        = string
  default     = null
}