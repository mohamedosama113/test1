output "eks_cluster_name" {
  value = module.eks.cluster_name
}

output "eks_kubeconfig" {
  value = module.eks.kubeconfig
}
