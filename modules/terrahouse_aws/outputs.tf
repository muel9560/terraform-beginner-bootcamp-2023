output "bucket_name" {
    description = "Bucket name for our static website"
    value = aws_s3_bucket.website_bucket.bucket
}

output "website_endpoint" {
    value = aws_s3_bucket_website_configuration.website_endpoint
}