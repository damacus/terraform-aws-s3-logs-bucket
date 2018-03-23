output "s3_bucket_id" {
  description = "The name of the bucket."
  value       = "${aws_s3_bucket.logs.id}"
}

output "s3_bucket_arn" {
  description = "The ARN of the bucket. Will be of format arn:aws:s3:::bucketname."
  value       = "${aws_s3_bucket.logs.arn}"
}

output "s3_bucket_bucket_domain_name" {
  description = "The Route 53 Hosted Zone ID for this bucket's region."
  value       = "${aws_s3_bucket.logs.bucket_domain_name}"
}

output "s3_bucket_hosted_zone_id" {
  description = "The Route 53 Hosted Zone ID for this bucket's region. (https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_website_region_endpoints)"
  value       = "${aws_s3_bucket.logs.hosted_zone_id}"
}

output "s3_bucket_region" {
  description = "The AWS region this bucket resides in."
  value       = "${aws_s3_bucket.logs.region}"
}
