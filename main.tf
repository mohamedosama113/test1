provider "aws" {
  region = var.region
}

module "vpc" {
  source              = "./modules/vpc"
  region              = var.region
  vpc_name            = var.vpc_name
  availability_zones  = var.availability_zones
}

module "eks" {
  source       = "./modules/eks"
  region       = var.region
  cluster_name = var.cluster_name
  vpc_id       = module.vpc.vpc_id
  subnet_ids   = module.vpc.subnet_ids
}

module "ebs-plugin" {
  source       = "./modules/ebs-plugin"
  region       = var.region
  cluster_name = module.eks.eks_cluster_name
  subnet_ids   = module.vpc.subnet_ids
}
