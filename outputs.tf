output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_ids" {
  value = module.vpc.subnet_ids
}

output "eks_cluster_name" {
  value = module.eks.eks_cluster_name
}

output "eks_kubeconfig" {
  value = module.eks.eks_kubeconfig
}
