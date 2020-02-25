![alt text](https://www.terraform.io/assets/images/logo-hashicorp-3f10732f.svg)

# **tf-module-bucket**

Supported Resources:

* [S3 Bucket](https://www.terraform.io/docs/providers/aws/r/s3_bucket.html)
* [IAM Instance Profile](https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html)

## Terraform Version
terraform 0.12

## Features
Create resources in S3 such `bucket`, `buckets objects` and `notifications` making them available for use by `instances` or another resource that makes use of `storage`.

## Requirements
  - Terraform
  - AWS Account
  
## Dependencies
  - Not applicable.

## Example of Use
 ------
`bucket`:

```hcl
module "instance_profile {
  source = "github.com/leandromoreirati/tf-module-bucket/modules/bucket"
  version = "~> 1.0.0"

  name = "${var.my_team}-${var.product}-${var.environment}"
  role = module.iam_role.iam_role_name
}
```

`bucket-object`:

```hcl
module "instance_profile {
  source = "github.com/leandromoreirati/tf-module-bucket/modules/bucket-object"
  version = "~> 1.0.0"version = "~> 1.0.0"

  role       = module.iam_role.iam_role_name
  policy_arn = module.iam_policy.iam_policy_arn
}
```

# External Documentation
 - [Amazon S3](https://amzn.to/38CEDNo)
 - [Amazon S3 Bucket Object](https://amzn.to/37Eclka)

# Created Features
 ------
 - Amazon S3
 - Amazon S3 Bucket Object
