terraform {
  cloud {
    organization = "Idaho-Muellers"
    workspaces {
      name = "terraform-beginner-bootcamp-2023"
    }
  }
  required_providers {
    terratowns = {
      source = "local.providers/local/terratowns"
      version = "1.0.0"
    }
  }
}

provider "terratowns" {
  endpoint = var.terratowns_endpoint
  user_uuid = var.teacherseat_user_uuid
  token = var.terratowns_access_token
}

module "terrahouse_aws" {
  source = "./modules/terrahouse_aws"
  user_uuid = var.teacherseat_user_uuid
  bucket_name = var.bucket_name
  index_html_filepath = var.index_html_filepath
  error_html_filepath = var.error_html_filepath
  assets_path = var.assets_path
  content_version = var.content_version
}

resource "terratowns_home" "home" {
  name = "Justified TV (2010-2015)"
  description = <<DESCRIPTION
About Justified
DESCRIPTION
  domain_name = module.terrahouse_aws.cloudfront_url
#  domain_name = "fnjsijrvis.cloudfront.net"
  town = "video-valley"
  content_version = var.content_version
}