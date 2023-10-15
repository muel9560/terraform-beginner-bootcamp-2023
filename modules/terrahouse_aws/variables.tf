variable "user_uuid" {
  description = "User UUID"
  type        = string

  validation {
    condition = can(regex("^([a-f0-9]{8}-[a-f0-9]{4}-[4][a-f0-9]{3}-[89ab][a-f0-9]{3}-[a-f0-9]{12})$", var.user_uuid))
    error_message = "User UUID must be in the format of a UUID (e.g., 123e4567-e89b-12d3-a456-426614174000)"
  }
}

#variable "bucket_name" {
#  description = "AWS S3 Bucket Name"
#  type        = string

#  validation {
#    condition     = can(regex("^[a-z0-9.-]{3,63}$", var.bucket_name))
#    error_message = "Invalid bucket name. Bucket names must be lowercase, between 3 and 63 characters, and can only contain lowercase letters, numbers, hyphens, and periods (dots)."
#  }
#}

variable "public_path" {
  description = "The path to the public folder"
  type        = string
}

variable "content_version" {
  description = "Content Version"
  type        = number

  validation {
    condition     = var.content_version > 0 && ceil(var.content_version) == floor(var.content_version)
    error_message = "Content version must be a positive integer starting at 1."
  }
}
