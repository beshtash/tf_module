provider "aws" {
  region = "us-east-1"
}

module "archa_vpc" {
  source      = "./modules/vpc"
  vpc_cidr    = "192.168.0.0/16"
  tenancy     = "default"
  vpc_id      = module.archa_vpc.vpc_id
  subnet_cidr = "192.168.0.0/24"
  subnet_id   = module.archa_vpc.subnet_id
}

module "archa_ec2" {
  source        = "./modules/ec2"
  ec2_count     = 1
  instance_type = "t2.micro"
  subnet_id     = module.archa_vpc.subnet_id
}

