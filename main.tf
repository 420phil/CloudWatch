provider "aws" {
  region = "us-east-1"
}

module "eks" {
  source       = "terraform-aws-modules/eks/aws"
  cluster_name = "my-eks-cluster"
  subnets      = ["subnet-12345678", "subnet-23456789", "subnet-34567890"]
  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

output "kubeconfig" {
  value = module.eks.kubeconfig
}
