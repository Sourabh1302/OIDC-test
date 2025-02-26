variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}


variable "iam_role_name" {
  description = "Name of the IAM role"
  type        = string
  default     = "CustomIAMRole"
}

variable "bucket_name" {
  description = "S3 bucket name"
  type = string
  default = "terraform-state-250225"
}

variable "aws_account_id" {
  description = "AWS Account ID"
  type        = string
}