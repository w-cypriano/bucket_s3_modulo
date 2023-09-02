terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
			source = "hashicorp/aws"
			version = "5.0.1"
    } 
  }
}

provider "aws" {
	region = "us-east-1"
	default_tags {
		tags = {
			owner = "Wellington"
			manager-by = "terraform"
		}
	}
}

module "welbucket1" {
  source = "./bucket"
}

module "welbucket2" {
  source = "./bucket"
  bucket = "welbucket0512"
}