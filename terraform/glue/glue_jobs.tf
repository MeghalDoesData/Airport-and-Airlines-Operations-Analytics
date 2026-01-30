resource "aws_glue_job" "etl_customers" {
  name     = "ETL_Customers"
  role_arn = var.glue_role_arn

  glue_version = "4.0"
  worker_type  = "G.1X"
  number_of_workers = 2

  command {
    name            = "glueetl"
    script_location = "s3://amzn-s3-finalproject-glue-scripts/etl_customers.py"
    python_version  = "3"
  }
}

resource "aws_glue_job" "etl_congestion" {
  name     = "ETL_CongestionScore"
  role_arn = var.glue_role_arn

  glue_version = "4.0"
  worker_type  = "G.1X"
  number_of_workers = 2

  command {
    name            = "glueetl"
    script_location = "s3://amzn-s3-finalproject-glue-scripts/etl_congestion_score.py"
    python_version  = "3"
  }
}
