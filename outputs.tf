output "justified_bucket_name" {
    description = "Bucket name for our static website"
    value = module.home_justified.bucket_name
}

output "justified_s3_website_endpoint" {
    description = "S3 static website hosting endpoint"
    value = module.home_justified.website_endpoint
}

output "justified_domain_name" {
    description = "The CloudFront Distribution Domain Name"
    value = module.home_justified.domain_name
}

output "sugarcookies_bucket_name" {
    description = "Bucket name for our static website"
    value = module.home_sugarcookies.bucket_name
}

output "sugarcookies_s3_website_endpoint" {
    description = "S3 static website hosting endpoint"
    value = module.home_sugarcookies.website_endpoint
}

output "sugarcookies_domain_name" {
    description = "The CloudFront Distribution Domain Name"
    value = module.home_sugarcookies.domain_name
}