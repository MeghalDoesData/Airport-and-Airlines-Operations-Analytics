resource "aws_glue_catalog_database" "airport_intelligence_db" {
  name = var.glue_database_name
}
