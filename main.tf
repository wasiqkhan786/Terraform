provider "aws" {
  region = var.aws_region
  # You can also specify your AWS access and secret keys here if needed.
}

module "my_elasticbeanstalk" {
  source = "./modules/elastic_beanstalk"
  aws_region = var.aws_region
}

module "my_iam_role" {
  source = "./modules/iam_role"
  # Pass IAM role-related variables as needed
}

module "my_s3_bucket" {
  source = "./modules/s3_bucket"

  # Pass S3 bucket-related variables as needed
}
