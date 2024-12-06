variable "region" {
  default = "us-east-1"
}

variable "vpc_name" {
  default = "eks-ebs-vpc"
}

variable "availability_zones" {
  default = ["us-east-1a", "us-east-1b"]
}

variable "cluster_name" {
  default = "eks-ebs-cluster"
}
