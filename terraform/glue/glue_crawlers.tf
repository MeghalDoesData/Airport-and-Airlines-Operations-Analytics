resource "aws_glue_crawler" "customers_crawler" {
  name          = "Customers_table_crawler"
  role          = var.glue_role_arn
  database_name = var.glue_database_name

  s3_target {
    path = "s3://amzn-s3-finalproject-processed/customers/"
  }
}

resource "aws_glue_crawler" "congestion_crawler" {
  name          = "CongestionScore_Crawler"
  role          = var.glue_role_arn
  database_name = var.glue_database_name

  s3_target {
    path = "s3://amzn-s3-finalproject-processed/departure_congestion/"
  }
}
