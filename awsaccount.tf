terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_organizations_account" "account" {
  email = var.root_email
  name = var.account_name
  tags = var.tags
  close_on_deletion=var.close_delete
  create_govcloud=var.gov_cloud
}


