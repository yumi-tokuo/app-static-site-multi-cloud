terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.21"
    }
  }
  backend "s3" {
    bucket         = "tf-notifier-state-cp2"
    key            = "terraform.tfstate"
    dynamodb_table = "tf-notifier-state-cp2"
    region         = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
  alias  = "cloud"
}