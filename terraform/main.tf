module "curated_s3" {
  source      = "./modules/s3"
  bucket_name = var.curated_bucket_name
}

module "glue_database" {
  source        = "./modules/glue"
  database_name = var.glue_database_name
}

module "glue_iam_role" {
  source         = "./modules/iam"
  raw_bucket     = var.raw_bucket_name
  curated_bucket = var.curated_bucket_name
}

module "glue_jobs" {
  source         = "./modules/glue_jobs"
  raw_bucket     = var.raw_bucket_name
  curated_bucket = var.curated_bucket_name
  glue_role_arn  = module.glue_iam_role.glue_role_arn
}

module "glue_crawlers" {
  source         = "./modules/glue_crawlers"
  curated_bucket = var.curated_bucket_name
  glue_database  = var.glue_database_name
  glue_role_arn  = module.glue_iam_role.glue_role_arn
}

# 🔥 NEW: STEP FUNCTIONS ORCHESTRATION (NO EVENTBRIDGE)
module "orchestration" {
  source = "./modules/orchestration"

  glue_jobs = [
    "ETL_Customers_v2",
    "ETL_CongestionScore_v2",
    "Kpi_2_v2"
  ]

  glue_crawlers = [
    "Customers_table_crawler_v2",
    "CongestionScore_Crawler_v2",
    "Kpi_2_Crawler_v2"
  ]
}
