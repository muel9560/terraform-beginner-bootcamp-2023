variable "user_uuid" {
  description = "User UUID"
  type        = string
}

variable "bucket_name" {
  description = "AWS S3 Bucket Name"
  type        = string
}

variable "index_html_filepath" {
  description = "Path to the index HTML file"
  type        = string
}

variable "error_html_filepath" {
  description = "Path to the error HTML file"
  type        = string
}

variable "content_version" {
  description = "Content Version"
  type        = number
}

variable "assets_path" {
  description = "Path to assets folder"
  type = string
}