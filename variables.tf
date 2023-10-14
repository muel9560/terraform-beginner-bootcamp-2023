variable "terratowns_endpoint" {
  description = "Terratowns endpoint"
  type        = string
}

variable "teacherseat_user_uuid" {
  description = "Teacherseat User UUID"
  type        = string
}

variable "terratowns_access_token" {
  description = "Terratowns Access Token"
  type = string
}

variable "bucket_name" {
  description = "AWS S3 Bucket Name"
  type        = string
}

variable "public_path" {
  description = "The path to the public folder"
  type        = string
}

variable "justified_public_path" {
  description = "The path to justified"
  type = string
}

variable "sugarcookies_public_path" {
  description = "The path to sugarcookies"
  type = string
}

variable "content_version" {
  description = "Content Version"
  type        = number
}

variable "assets_path" {
  description = "Path to assets folder"
  type = string
}