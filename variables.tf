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

variable "justified" {
  type = object({
    public_path = string
    content_version = number
  })
}

variable "sugarcookies" {
  type = object({
    public_path = string
    content_version = number
  })
}
