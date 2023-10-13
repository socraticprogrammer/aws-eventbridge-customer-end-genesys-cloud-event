# Configure the AWS Provider
provider "aws" {
  region = var.aws_account_region
}

terraform {
  required_providers {
    genesyscloud = {
      source  = "MyPureCloud/genesyscloud"
      version = "1.15.0"
    }
  }
}
