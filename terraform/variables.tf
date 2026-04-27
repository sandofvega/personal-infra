variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "tf_state_bucket_name" {
  description = "AWS S3 bucket name for storing Terraform state file"
  type        = string
}
