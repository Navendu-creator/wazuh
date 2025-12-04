terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"

  assume_role {
    role_arn     = "arn:aws:iam::779846819776:role/eksassumerole"
    session_name = "terraform"
  }
}
