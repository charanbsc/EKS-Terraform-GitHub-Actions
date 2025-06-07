terraform {
  required_version = "~> 1.12.1"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "charan-tf-bucket"
    region         = "us-east-1"
    key            = "eks/terraform.tfstate"
    encrypt        = true
    use_lockfile   = true
  }
}

provider "aws" {
  region  = var.aws-region
}
