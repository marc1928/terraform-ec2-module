output "vpc_id" {
  value = module.vpc.vpc_id
}

output "security_group_id" {
  value = module.security_groups.sg_id
}

output "ec2_instance_id" {
  value = module.ec2_instance.id
}

output "public_ip" {
  value = module.ec2_instance.public_ip
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_id" {
  value = module.vpc.public_subnet_id
}

