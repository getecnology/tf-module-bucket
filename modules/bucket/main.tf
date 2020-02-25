/* For more details on the configuration, visit the official documentation::
https://www.terraform.io/docs/providers/aws/r/s3_bucket.html
 */

locals {
  files_list = [
    "${md5(file("${path.module}/main.tf"))}",
    "${md5(file("${path.module}/output.tf"))}",
    "${md5(file("${path.module}/variables.tf"))}",
  ]
  current_deployment = join("", local.files_list)
}

resource "aws_s3_bucket" "bucket" {
  bucket = var.name
  acl    = var.acl

  versioning {
    enabled = var.versioning
  }

  force_destroy = var.force_destroy

  dynamic "logging" {

    for_each = length(var.logging) == 0 ? [] : [var.logging]

    content {
      target_bucket = logging.value.target_bucket
      target_prefix = logging.value.target_prefix
    }
  }
  tags = var.tags
}