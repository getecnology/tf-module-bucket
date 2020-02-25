provider "aws" {
  region  = var.region
  profile = var.profile
}

module "bucket" {
  source = "../../s3/modules/bucket"

  name = "${var.my_team}-${var.product}"
  acl  = private

  versioning = true

  tags = {
    Name        = "${var.my_team}-${var.product}-${var.environment}"
    environment = var.environmen
    Terraform   = "true"
  }
}

terraform {
  backend "s3" {
    bucket = "lms-infraestrutura-terraform"
    key    = "s3.tfstate"
    region = "us-east-1"
  }
}