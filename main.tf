terraform {
#  cloud {
#    organization = "Idaho-Muellers"
#    workspaces {
#      name = "terraform-beginner-bootcamp-2023"
#    }
#  }
}

module "terrahouse_aws"{
  source = "./modules/terrahouse_aws"
  user_uuid = var.user_uuid
  bucket_name = var.bucket_name
}