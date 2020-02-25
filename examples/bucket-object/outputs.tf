output "bucket_object_id" {
  value       = module.bucket_object.bucket_object_id
  description = "Name of the bucket to put the file in."
}

output "bucket_object_etag" {
  value       = module.bucket_object.bucket_object_etag
  description = "Name of the bucket to put the file in."
}

output "bucket_id" {
  value       = module.bucket.bucket_id
  description = "Name of the bucket."
}

output "bucket_arn" {
  value       = module.bucket.bucket_arn
  description = "ARN of the bucket."
}


