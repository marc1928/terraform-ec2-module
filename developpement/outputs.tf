output "vpc_id" {
  value = module.vpc.id
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
