terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

backend "s3" {
    bucket = "practice-infra-githubactions"
    key    = "practice/arjun/terraform.tfstate"
    region = "ap-south-1"
  }

}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}
