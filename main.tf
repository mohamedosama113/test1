module "vpc" {
  source          = "./modules/vpc"
  region          = var.region
  vpc_cidr        = var.vpc_cidr
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]
}

module "eks" {
  source          = "./modules/eks"
  cluster_name    = var.cluster_name
  region          = var.region
  vpc_id          = module.vpc.vpc_id
  private_subnets = module.vpc.private_subnets
}

module "ebs_plugin" {
  source         = "./modules/ebs-plugin"
  cluster_name   = module.eks.cluster_name
  oidc_provider  = module.eks.oidc_provider
  region         = var.region
}
