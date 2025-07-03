output "ec2_instance_id" {
  value = module.ec2.instance_id
}

output "bucket_arn" {
  value = module.s3.bucket_arn
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "sg_id" {
  value = module.sg.sg_id
}

output "rds_endpoint" {
  value = module.rds.rds_endpoint
}

output "alb_dns" {
  value = module.alb.alb_dns
}

output "lambda_function_name" {
  value = module.lambda.lambda_function_name
}

output "api_endpoint" {
  value = module.apigateway.api_endpoint
}

output "zone_id" {
  value = module.route53.zone_id
}

output "igw_id" {
  value = module.igw.igw_id
}

output "nat_gateway_id" {
  value = module.nat.nat_gateway_id
}

output "public_route_table_id" {
  value = module.route_table_public.route_table_id
}

output "private_route_table_id" {
  value = module.route_table_private.route_table_id
}