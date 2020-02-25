variable "name" {
  default     = ""
  description = "Bucket S3 name."
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "object_key" {
  default     = ""
  description = "The name of the object once it is in the bucket."
}

variable "object_source" {
  default     = ""
  description = "Path to a file that will be read and uploaded as raw bytes for the object content."
}

variable "bucket_name" {
  default     = ""
  description = "Name of bucket."
}