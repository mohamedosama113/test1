provider "aws" {
  region = var.region
}

module "vpc" {
  source             = "./modules/vpc"
  region             = var.region
  vpc_name           = var.vpc_name
  availability_zones = var.availability_zones
}

module "eks" {
  source       = "./modules/eks"
  region       = var.region
  cluster_name = var.cluster_name
  vpc_id       = module.vpc.vpc_id
}

