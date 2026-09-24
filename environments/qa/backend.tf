terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.66.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = var.aws_region
}

terraform {
  backend "s3" {
    bucket    = "lwmproject-0001"
    key       = "environments/qa/terraform.tfstate" # place to store the state file in the bucket
    region    = "us-east-1" # we cant pass variable here as the backend is initialized before the provider, so we have to hardcode the region here
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
