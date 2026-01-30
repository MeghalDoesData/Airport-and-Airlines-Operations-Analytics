resource "aws_glue_catalog_database" "this" {
  name        = var.database_name
  description = "Glue database for Airport Intelligence curated analytics"
}
