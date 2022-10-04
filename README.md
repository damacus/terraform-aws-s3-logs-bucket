# terraform-aws-s3-logs-bucket

Terraform module which creates a S3 bucket designed for logging

## Requirements

| Name                                                                      | Version |
| ------------------------------------------------------------------------- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12 |

## Providers

| Name                                              | Version |
| ------------------------------------------------- | ------- |
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a     |

## Modules

No modules.

## Resources

| Name                                                                                                                                                                    | Type     |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [aws_s3_bucket.bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket)                                                           | resource |
| [aws_s3_bucket_acl.example_bucket_acl](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_acl)                                       | resource |
| [aws_s3_bucket_lifecycle_configuration.bucket_lifecycle](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_lifecycle_configuration) | resource |
| [aws_s3_bucket_versioning.bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning)                                     | resource |

## Inputs

| Name                                                                                                                      | Description                                | Type       | Default                          | Required |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------ | ---------- | -------------------------------- | :------: |
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name)                                                     | n/a                                        | `string`   | `"Name of the bucket to create"` |    no    |
| <a name="input_bucket_versioning"></a> [bucket\_versioning](#input\_bucket\_versioning)                                   | (optional) Enable versioning on the bucket | `bool`     | `false`                          |    no    |
| <a name="input_expiration_days"></a> [expiration\_days](#input\_expiration\_days)                                         | n/a                                        | `number`   | `365`                            |    no    |
| <a name="input_glacier_transition_days"></a> [glacier\_transition\_days](#input\_glacier\_transition\_days)               | n/a                                        | `number`   | `180`                            |    no    |
| <a name="input_mfa_delete"></a> [mfa\_delete](#input\_mfa\_delete)                                                        | (optional) Enable MFA delete on the bucket | `bool`     | `false`                          |    no    |
| <a name="input_standard_ia_transition_days"></a> [standard\_ia\_transition\_days](#input\_standard\_ia\_transition\_days) | Bucket Life cycle policies                 | `number`   | `90`                             |    no    |
| <a name="input_tags"></a> [tags](#input\_tags)                                                                            | A map of tags to add to all resources      | `map(any)` | `{}`                             |    no    |

## Outputs

| Name                                                   | Description |
| ------------------------------------------------------ | ----------- |
| <a name="output_bucket"></a> [bucket](#output\_bucket) | n/a         |
