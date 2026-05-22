module "s3_bucket" {
  source = "../../modules/s3"

  bucket_name        = var.bucket_name
  versioning_enabled = true

  tags = var.tags
}

module "rds_instance" {
  source = "../../modules/rds"

  identifier             = var.db_identifier
  engine                 = "postgres"
  engine_version         = "15.4"
  instance_class         = "db.t3.micro"
  allocated_storage      = 20
  db_name                = "exampledb"
  username               = "dbadmin"
  password               = var.db_password
  vpc_security_group_ids = [] # In a real scenario, provide actual SGs
  create_subnet_group    = false

  tags = var.tags
}

module "iam_role" {
  source = "../../modules/iam_role"

  role_name = var.role_name
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

  tags = var.tags
}
