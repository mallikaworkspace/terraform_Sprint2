output "bucket_names" {
    value = aws_s3_bucket.bucket[*].id
}

output "cloudeq" {
    value=null_resource.cloudeq
}

