terraform {
  required_version = ">= 0.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }

  cloud {
    organization = "hendy"
    workspaces {
       name = "live"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
