terraform {
  required_version = ">= 1.3.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.40"
    }
  }
}

provider "aws" {
  default_tags {
    tags = {
      Owner       = "tony.fruzza"
      Environment = "dev"
    }
  }
}
