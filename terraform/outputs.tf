output "curated_bucket_name" {
  value = module.curated_s3.bucket_name
}

output "glue_database_name" {
  value = module.glue_database.database_name
}

output "glue_iam_role_arn" {
  value = module.glue_iam_role.glue_role_arn
}

output "glue_jobs" {
  value = module.glue_jobs.job_names
}

output "glue_crawlers" {
  value = module.glue_crawlers.crawler_names
}
