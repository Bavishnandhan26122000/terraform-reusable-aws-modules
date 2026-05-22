variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

variable "bucket_name" {
  description = "Name for the example S3 bucket"
  type        = string
  default     = "example-secure-bucket-12345"
}

variable "db_identifier" {
  description = "Identifier for the RDS instance"
  type        = string
  default     = "example-db"
}

variable "db_password" {
  description = "Password for the database"
  type        = string
  sensitive   = true
}

variable "role_name" {
  description = "Name for the IAM role"
  type        = string
  default     = "example-app-role"
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default = {
    Environment = "Example"
    Project     = "TerraformModules"
  }
}
