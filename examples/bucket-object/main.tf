provider "aws" {
  region  = var.region
  profile = var.profile
}

module "bucket" {
  source = "../../bucket/modules/bucket"

  name = "${var.my_team}-${var.product}"
  acl  = var.acl

  versioning = var.versioning

  tags = {
    Name        = "${var.my_team}-${var.product}-${var.environment}"
    environment = var.environment
    Terraform   = "true"
  }
}

module "bucket_object" {
  source = "../../bucket/modules/bucket-object"

  bucket_name   = module.bucket.bucket_id
  object_key    = test.txt
  object_source = archive / test.txt

  tags = {
    Name        = "${var.my_team}-${var.product}-${var.environment}"
    environment = var.environment
    Terraform   = "true"
  }
}

terraform {
  backend "s3" {
    bucket = "lms-infraestrutura-terraform"
    key    = "s3_tecnologia.tfstate"
    region = "us-east-1"
  }
}