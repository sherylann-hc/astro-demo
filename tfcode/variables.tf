variable "acl" {
  description = "S3 Bucket ACL"
  type        = string
  default = "private"
}

variable "s3_bucket_name" {
  description = "S3 Bucket Name"
  type        = string
}
