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
  subnet_ids   = module.vpc.subnet_ids
}

resource "aws_eks_addon" "ebs_csi" {
  cluster_name  = module.eks.eks_cluster_name
  addon_name    = "aws-ebs-csi-driver"
  addon_version = "v1.20.0"

  tags = {
    Environment = "production"
  }
}
