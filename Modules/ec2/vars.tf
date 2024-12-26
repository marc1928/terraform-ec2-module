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

variable "ssh_key_location" {
  type    = string
  default = "../Modules/ec2/key/id_rsa.pub"
}

