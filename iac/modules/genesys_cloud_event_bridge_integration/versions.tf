terraform {
  required_providers {
    genesyscloud = {
      source  = "MyPureCloud/genesyscloud"
      version = "1.15.0"
    }
  }
}


provider "genesyscloud" {
  aws_region = var.aws_account_region
}
