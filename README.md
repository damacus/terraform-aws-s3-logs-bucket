# terraform-aws-s3-logs-bucket

Terraform module which creates a S3 bucket designed for logging

## Inputs

Name                        | Description                           |  Type  |            Default             | Required
--------------------------- | ------------------------------------- | :----: | :----------------------------: | :------:
bucket_name                 |                                       | string | `Name of the bucket to create` |    no
expiration                  |                                       | string |              `90`              |    no
glacier_transition_days     |                                       | string |              `60`              |    no
standard_ia_transition_days | Bucket Life cycle policies            | string |              `30`              |    no
tags                        | A map of tags to add to all resources | string |            `<map>`             |    no

## Outputs

Name                         | Description
---------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------
s3_bucket_arn                | The ARN of the bucket. Will be of format arn:aws:s3:::bucketname.
s3_bucket_bucket_domain_name | The Route 53 Hosted Zone ID for this bucket's region.
s3_bucket_hosted_zone_id     | The Route 53 Hosted Zone ID for this bucket's region. (<https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_website_region_endpoints>)
s3_bucket_id                 | The name of the bucket.
s3_bucket_region             | The AWS region this bucket resides in.
