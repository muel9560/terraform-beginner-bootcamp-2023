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

module "home_justified" {
  source = "./modules/terrahouse_aws"
  user_uuid = var.teacherseat_user_uuid
  bucket_name = var.bucket_name
  public_path = var.justified_public_path
  content_version = var.content_version
}

resource "terratowns_home" "justified" {
  name = "Justified TV (2010-2015)"
  description = <<DESCRIPTION
About Justified
DESCRIPTION
  domain_name = module.home_justified.domaion_name
#  domain_name = "fnjsijrvis.cloudfront.net"
  town = "video-valley"
  content_version = var.content_version
}

module "home_sugarcookies" {
  source = "./modules/terrahouse_aws"
  user_uuid = var.teacherseat_user_uuid
  bucket_name = var.bucket_name
  public_path = var.sugarcookies_public_path
  content_version = var.content_version
}

resource "terratowns_home" "sugarcookies" {
  name = "Sugar Cookies"
  description = <<DESCRIPTION
The best sugar cookies recipe
DESCRIPTION
  domain_name = module.home_sugarcookies.domain_name
#  domain_name = "fnjsijrvis.cloudfront.net"
  town = "cooker-cove"
  content_version = var.content_version
}