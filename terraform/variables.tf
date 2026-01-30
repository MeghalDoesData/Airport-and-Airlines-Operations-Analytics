variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "raw_bucket_name" {
  type    = string
  default = "amzn-s3-finalproject"
}

variable "curated_bucket_name" {
  type    = string
  default = "amzn-s3-finalproject-curated-v1"
}

variable "glue_database_name" {
  type    = string
  default = "airport_intelligence_curated_db"
}
