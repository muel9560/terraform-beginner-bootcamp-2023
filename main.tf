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
  public_path = var.justified.public_path
  content_version = var.justified.content_version
}

resource "terratowns_home" "justified" {
  name = "Justified TV (2010-2015)"
  description = <<DESCRIPTION
About Justified
DESCRIPTION
  domain_name = module.home_justified.domain_name
#  domain_name = "fnjsijrvis.cloudfront.net"
  town = "video-valley"
  content_version = var.justified.content_version
}

module "home_sugarcookies" {
  source = "./modules/terrahouse_aws"
  user_uuid = var.teacherseat_user_uuid
  public_path = var.sugarcookies.public_path
  content_version = var.sugarcookies.content_version
}

resource "terratowns_home" "sugarcookies" {
  name = "Sugar Cookies"
  description = <<DESCRIPTION
The best sugar cookies recipe
DESCRIPTION
  domain_name = module.home_sugarcookies.domain_name
#  domain_name = "fnjsijrvis.cloudfront.net"
  town = "cooker-cove"
  content_version = var.sugarcookies.content_version
}