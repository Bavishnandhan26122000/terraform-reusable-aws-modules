# AWS IAM Role Module

This module creates a strict IAM role and supports attaching both managed and inline policies.

## Usage

```hcl
module "app_role" {
  source = "./modules/iam_role"

  role_name          = "my-app-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })

  managed_policy_arns = [
    "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
  ]

  inline_policies = {
    "my-inline-policy" = jsonencode({
      Version = "2012-10-17",
      Statement = [
        {
          Action   = ["s3:ListAllMyBuckets"],
          Effect   = "Allow",
          Resource = "*"
        }
      ]
    })
  }

  tags = {
    Environment = "Production"
  }
}
```
