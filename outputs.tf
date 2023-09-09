output "elasticbeanstalk_endpoint" {
  description = "The endpoint of the Elastic Beanstalk environment."
  value       = module.my_elasticbeanstalk
}

output "iam_role_arn" {
  description = "The ARN of the IAM role."
  value       = module.my_iam_role
}
