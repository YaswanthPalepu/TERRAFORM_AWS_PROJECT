provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source               = "../../modules/vpc"
  vpc_cidr             = var.vpc_cidr
  vpc_name             = var.vpc_name
  instance_tenancy     = var.instance_tenancy
  availability_zones   = var.availability_zones
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  tags                 = var.tags
}

module "igw" {
  source = "../../modules/igw"
  vpc_id = module.vpc.vpc_id
  name   = var.vpc_name
  tags   = var.tags
}

module "route_tables" {
  source              = "../../modules/route-table"
  vpc_id              = module.vpc.vpc_id
  igw_id              = module.igw.igw_id
  public_subnet_ids   = module.vpc.public_subnet_ids
  private_subnet_ids  = module.vpc.private_subnet_ids
  name                = var.vpc_name
  tags                = var.tags
}

module "ec2_public" {
  source               = "../../modules/ec2"
  ami_id               = var.ami_id
  instance_type        = var.instance_type
  key_name             = var.key_name
  subnet_ids           = module.vpc.public_subnet_ids
  associate_public_ip  = true
  security_group_ids   = [module.security_group.public_sg_id]
  instance_count       = 1
  root_volume_size     = 20
  root_volume_type     = "gp3"
  name                 = "${var.vpc_name}-pub"
  tags                 = var.tags
}

module "security_group" {
  source        = "../../modules/security-group"
  name          = "${var.vpc_name}-public-sg"
  description   = "Security group for public EC2"
  vpc_id        = module.vpc.vpc_id
  ingress_rules = var.public_sg_ingress
  egress_rules  = var.public_sg_egress
  tags          = var.tags
}

module "s3_bucket" {
  source                           = "../../modules/s3"
  bucket_name                      = var.bucket_name
  force_destroy                    = var.s3_force_destroy
  versioning_enabled               = var.s3_versioning
  encryption_algorithm             = var.s3_encryption
  kms_key_id                       = var.s3_kms_key_id
  lifecycle_id                     = var.s3_lifecycle_id
  lifecycle_days                   = var.s3_lifecycle_days
  noncurrent_version_expiration_days = var.s3_noncurrent_expire_days
  tags                             = var.tags
}

module "ecr_repo" {
  source                  = "../../modules/ecr"
  name                    = var.ecr_name
  image_tag_mutability    = var.image_tag_mutability
  scan_on_push            = var.scan_on_push
  encryption_type         = var.encryption_type
  kms_key                 = var.kms_key
  force_delete            = var.force_delete
  lifecycle_rule_priority = var.lifecycle_rule_priority
  lifecycle_description   = var.lifecycle_description
  lifecycle_count         = var.lifecycle_count
  tags                    = var.tags
}

module "eks" {
  source                    = "../../modules/eks"
  cluster_name              = var.cluster_name
  subnet_ids                = module.vpc.public_subnet_ids
  endpoint_private_access   = var.endpoint_private_access
  endpoint_public_access    = var.endpoint_public_access
  cluster_security_group_ids = [module.security_group.public_sg_id]
  service_ipv4_cidr         = var.service_ipv4_cidr
  tags                      = var.tags
}

module "ssh_key" {
  source = "../../modules/ssh_key"
  algorithm = var.algorithm
  rsa_bits = var.rsa_bits
  key_name = var.key_name
  filename = var.filename
}