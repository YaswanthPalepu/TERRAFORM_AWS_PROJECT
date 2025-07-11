output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}

output "igw_id" {
  value = module.igw.igw_id
}

output "public_route_table_id" {
  value = module.route_tables.public_route_table_id
}

output "private_route_table_id" {
  value = module.route_tables.private_route_table_id
}

output "ec2_public_instance_ids" {
  value = module.ec2_public.instance_ids
}

output "ec2_private_instance_ids" {
  value = module.ec2_private.instance_ids
}
output "public_sg_id" {
  value = module.security_group.sg_id
}

output "s3_bucket_name" {
  value = module.s3_bucket.bucket_name
}
output "s3_bucket_arn" {
  value = module.s3_bucket.bucket_arn
}

output "ecr_repository_url" {
  value = module.ecr_repo.ecr_repository_url
}
output "ecr_repository_name" {
  value = module.ecr_repo.ecr_repository_name
}
output "ecr_repository_arn" {
  value = module.ecr_repo.ecr_repository_arn
}

