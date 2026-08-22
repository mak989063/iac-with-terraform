provider "aws" {
  region  = var.aws_region
  profile = "mani-admin"
}

module "vpc" {
  source = "../../modules/vpc"

  name               = var.environment
  vpc_cidr           = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  availability_zone  = var.availability_zone
}

module "security_group" {
  source = "../../modules/security-group"

  name        = "${var.environment}-web-sg"
  description = "Security group for ${var.environment} web server"
  vpc_id      = module.vpc.vpc_id
}

module "ec2" {
  source = "../../modules/ec2"

  name               = "${var.environment}-web"
  ami_id             = var.ami_id
  instance_type      = var.instance_type
  subnet_id          = module.vpc.public_subnet_id
  security_group_ids = [module.security_group.security_group_id]
}