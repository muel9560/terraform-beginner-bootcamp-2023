output "bucket_name" {
    description = "Bucket name for our static website"
    value = module.terrahouse_aws.bucket_name
}

output "s3_website_endpoint" {
    description = "S3 static website hosting endpoint"
    value = module.home_justified.website_endpoint
}

output "domain_name" {
    description = "The CloudFront Distribution Domain Name"
    value = module.home_justified.domain_name
}