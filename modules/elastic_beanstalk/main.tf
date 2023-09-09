resource "aws_elastic_beanstalk_application" "CustomerManagmentSystem" {
  name        = var.application_name
  description = "Elastic Beanstalk Application"
}

resource "aws_elastic_beanstalk_environment" "CustomerManagmentSystemEnv" {
  name                = var.environment_name
  application         = aws_elastic_beanstalk_application.CustomerManagmentSystem.name
  solution_stack_name = "64bit Amazon Linux 2 v5.2.0 running Java 8"
  # Other environment configuration settings
}
