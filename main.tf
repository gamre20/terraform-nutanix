provider "aws" {
      region = var.region
}

module "eks_example_complete" {
  source  = "terraform-aws-modules/eks/aws//examples/complete"
  version = "17.20.0"
}
