resource "aws_iam_role" "my-elasticbeanstalk-role" {
  name = var.aws_Iam_role

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "elasticbeanstalk.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_policy" "my-elasticbeanstalk-policy" {
  name        = var.my-elasticbeanstalk-policy
  description = "Policy for Elastic Beanstalk"
   policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action   = "s3:GetObject",
        Effect   = "Allow",
        Resource = "arn:aws:s3:::your-s3-bucket-name/*"  # Replace with your S3 bucket ARN
      }
      # Add more policy statements as needed
    ]
  })
}
resource "aws_iam_role_policy_attachment" "policyattachment" {
  policy_arn = aws_iam_policy.my-elasticbeanstalk-policy.arn
  role       = aws_iam_role.my-elasticbeanstalk-role.name
}
