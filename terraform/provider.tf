terraform {

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.76.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.55"
    }
  }

  backend "s3" {
    bucket         = "tf-staticsite-s3-state-v001"
    key            = "terraform.tfstate"
    dynamodb_table = "tf-staticsite-s3-state-v001"
    region         = "us-east-1"
  }

}

provider "azurerm" {
  features {}
  alias = "cloud"
}

provider "aws" {
  region = "us-east-1"
  alias  = "cloud"
}