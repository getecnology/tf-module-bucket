/* For more details on the configuration, visit the official documentation::
https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html
 */

locals {
  files_list = [
    "${md5(file("${path.module}/main.tf"))}",
    "${md5(file("${path.module}/outputs.tf"))}",
    "${md5(file("${path.module}/variables.tf"))}",
  ]
  current_deployment = join("", local.files_list)
}

resource "aws_s3_bucket_object" "bucket_object" {

  bucket = var.bucket_name
  key    = var.object_key
  source = var.object_source
  etag   = filemd5(var.object_source)

  tags = var.tags
}