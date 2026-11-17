terraform {
  required_version = ">= 1.5.0"

  backend "s3" {
    bucket       = "terra-backend-naveen"
    key          = "infra/terraform.tfstate"
    region       = "ap-southeast-1"
    use_lockfile = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}