output "bucket_id" {
  value       = module.bucket.bucket_id
  description = "Name of the bucket."
}

output "bucket_arn" {
  value       = module.bucket.bucket_arn
  description = "ARN of the bucket."
}
