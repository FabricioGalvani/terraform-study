terraform {
  required_version = ">= 1.8.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.45.0"
    }
  }

  backend "s3" {
    bucket = "fabricio-my-tf-test-bucket"
    key    = "aws-vm/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      owner      = "fabricio"
      managed-by = "terraform"
    }
  }
}
