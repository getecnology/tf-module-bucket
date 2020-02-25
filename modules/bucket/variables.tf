variable "name" {
  default     = ""
  description = "Bucket S3 name."
}

/* ACl types: https://docs.aws.amazon.com/pt_br/AmazonS3/latest/dev/acl-overview.html#canned-acl */
variable "acl" {
  default     = "private"
  description = "Defines which type of bucket access acl S3 (public or privite). "
}

variable "create_object" {
  default     = "false"
  description = "Enables bucket object creation (true or false)."
}

variable "object_key" {
  default     = ""
  description = "The name of the object once it is in the bucket."
}

variable "object_source" {
  default     = ""
  description = "Path to a file that will be read and uploaded as raw bytes for the object content."
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "versioning" {
  default     = "false"
  description = "Versioning object into bucket (true or false)."
}

variable "force_destroy" {
  default     = "false"
  description = "Indicates all objects (including any locked objects) should be deleted from the bucket so that the bucket can be destroyed without error"
}

variable "target_bucket" {
  default = ""
}

variable "target_prefix" {
  default = ""
}

variable "logging" {
  type        = map(string)
  default     = {}
  description = "Enable logging set this to [{target_bucket = 'xxx' target_prefix = 'logs/'}]"
}