output "bucket_name" {
    description = "Bucket name for our static website"
    value = aws_s3_bucket.website_bucket.bucket
}