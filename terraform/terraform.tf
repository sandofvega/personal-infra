terraform {
  required_version = "~> 1.14"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.8"
    }

    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {}
}
