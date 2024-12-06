# Root main.tf

# Initialize provider
provider "aws" {
  region = var.aws_region
}

# Call VPC module
module "vpc" {
  source = "./modules/vpc"

  cidr_block = var.vpc_cidr_block
}

# Call EKS module
module "eks" {
  source      = "./modules/eks"
  vpc_id      = module.vpc.vpc_id
  subnet_ids  = module.vpc.subnet_ids
  cluster_name = var.cluster_name
}
