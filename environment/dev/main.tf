module "vpc" {
  source    = "../../modules/vpc"
  vpc_cidr  = var.vpc_cidr
  vpc_name  = var.vpc_name
}

module "sg" {
  source   = "../../modules/security-group"
  vpc_id   = module.vpc.vpc_id
  sg_name  = var.sg_name
}

module "ec2" {
  source             = "../../modules/ec2"
  ami                = var.ami
  instance_type      = var.instance_type
  subnet_id          = var.subnet_id
  security_group_ids = [module.sg.sg_id]
  instance_name      = var.instance_name
}

module "s3" {
  source      = "../../modules/s3"
  bucket_name = var.bucket_name
}

module "rds" {
  source             = "../../modules/rds"
  allocated_storage  = var.allocated_storage
  engine             = var.engine
  engine_version     = var.engine_version
  instance_class     = var.instance_class
  db_name            = var.db_name
  username           = var.username
  password           = var.password
  sg_id              = module.sg.sg_id
  subnet_group_name  = var.subnet_group_name
}

module "alb" {
  source          = "../../modules/alb"
  name            = var.name
  subnets         = var.subnets
  security_groups = [module.sg.sg_id]
  load_balancer_type = var.load_balancer_type
}

module "lambda" {
  source         = "../../modules/lambda"
  function_name  = var.function_name
  handler        = var.handler
  runtime        = var.runtime
  role_arn       = var.role_arn
  filename       = var.filename
}

module "apigateway" {
  source   = "../../modules/apigateway"
  api_name = var.api_name
  protocol_type = var.protocol_type
}

module "route53" {
  source       = "../../modules/route53"
  domain_name  = var.domain_name
}

module "igw" {
  source   = "../../modules/igw"
  vpc_id   = var.vpc_id
  igw_name = var.igw_name
}

module "nat" {
  source             = "../../modules/nat"
  subnet_id          = var.public_subnet_id
  eip_allocation_id  = var.eip_allocation_id
  nat_name           = var.nat_name
}

module "route_table_public" {
  source     = "../../modules/route-table"
  vpc_id     = var.vpc_id
  cidr_block = "0.0.0.0/0"
  gateway_id = module.igw.igw_id
  rt_name    = "public-rt"
}

module "route_table_private" {
  source     = "../../modules/route-table"
  vpc_id     = var.vpc_id
  cidr_block = "0.0.0.0/0"
  gateway_id = module.nat.nat_gateway_id
  rt_name    = "private-rt"
}