terraform {
#  cloud {
#    organization = "Idaho-Muellers"
#    workspaces {
#      name = "terraform-beginner-bootcamp-2023"
#    }
#  }
  
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.17.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

