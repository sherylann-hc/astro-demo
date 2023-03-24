provider "aws" {
  region = "ap-southeast-1"
}

####Provisioning resources direct
resource "aws_s3_bucket" "astro-demo" {
  bucket = var.s3_bucket_name
  acl    = var.acl

  versioning {
    enabled = true
  }
}

####Provisioning via modules
# module "s3_bucket" {
#   source = "terraform-aws-modules/s3-bucket/aws"
#   version = "~> 2.0"

#   bucket = var.s3_bucket_name
#   acl    = var.acl

#   versioning = {
#     enabled = true
#   }
# }
