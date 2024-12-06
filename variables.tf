variable "region" {
  default = "us-west-2"
}

variable "vpc_name" {
  default = "eks-ebs-vpc"
}

variable "availability_zones" {
  default = ["us-west-2a", "us-west-2b"]
}

variable "cluster_name" {
  default = "eks-ebs-cluster"
}
