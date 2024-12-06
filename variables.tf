variable "region" {
  default = "us-west-1"
}

variable "vpc_name" {
  default = "my-vpc"
}

variable "availability_zones" {
  default = ["us-west-2a", "us-west-2b"]
}

variable "cluster_name" {
  default = "my-eks-cluster"
}
