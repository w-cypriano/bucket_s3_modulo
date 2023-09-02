# terraform {
#   required_version = ">= 1.0.0"

#   required_providers {
#     aws = {
# 			source = "hashicorp/aws"
# 			version = "5.0.1"
#     } 
#   }
# }

# provider "aws" {
# 	region = "us-east-1"
# 	default_tags {
# 		tags = {
# 			owner = "Wellington"
# 			manager-by = "terraform"
# 		}
# 	}
# }
# O Codigo comentado acima so será necessário se esse modulos for usar um provider diferente do main

resource "aws_s3_bucket" "welbucket" {
	bucket = var.bucket
}