output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_ids" {
  value = module.vpc.subnet_ids
}

output "eks_cluster_name" {
  value = module.eks.eks_cluster_name
}

output "ebs_csi_status" {
  value = module.ebs-plugin.ebs_csi_status
}
