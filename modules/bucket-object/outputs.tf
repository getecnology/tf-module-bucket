output "bucket_object_id" {
  value       = aws_s3_bucket_object.bucket_object.*.id
  description = "Key of the resource supplied above."
}

output "bucket_object_etag" {
  value       = aws_s3_bucket_object.bucket_object.*.etag
  description = "ETag generated for the object (an MD5 sum of the object content)."
}

