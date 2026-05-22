output "s3_bucket_arn" {
  value = module.s3_bucket.bucket_arn
}

output "rds_endpoint" {
  value = module.rds_instance.db_instance_endpoint
}

output "iam_role_arn" {
  value = module.iam_role.role_arn
}
