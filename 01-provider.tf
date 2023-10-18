# Configure the Terrafrom block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "tl-tfstate-s3"
    key    = "dev/terraform.tfstate"
    region = "us-east-2" 
    dynamodb_table = "tl-tfstate-lock"
    }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}
