module "processed_s3" {
  source = "./s3"
}

module "glue_iam" {
  source = "./iam"
}

module "glue_catalog" {
  source = "./glue"

  glue_role_arn      = module.glue_iam.glue_role_arn
  glue_database_name = "airport_intelligence_db"
}
