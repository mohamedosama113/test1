provider "aws" {
  region = var.region
}

module "ebs_csi_driver" {
  source  = "terraform-aws-modules/kubernetes/aws"
  cluster_name = var.cluster_name
  subnets      = var.subnet_ids

  addons = {
    ebs_csi = {
      addon_name  = "aws-ebs-csi-driver"
      addon_version = "v1.20.0"
    }
  }
}

output "ebs_csi_status" {
  value = module.ebs_csi_driver.addons["ebs_csi"].status
}
