# AWS RDS Instance Module

This module provisions a secure AWS RDS instance.
- Storage encryption is strictly enforced.
- Creates a DB subnet group by default if `create_subnet_group` is true.

## Usage

```hcl
module "secure_rds" {
  source = "./modules/rds"

  identifier             = "my-secure-db"
  engine                 = "postgres"
  engine_version         = "15.4"
  instance_class         = "db.t3.micro"
  allocated_storage      = 20
  db_name                = "myappdb"
  username               = "dbadmin"
  password               = "SuperSecretPassword123!" # In production, pull from Secrets Manager
  vpc_security_group_ids = ["sg-12345678"]
  subnet_ids             = ["subnet-12345678", "subnet-87654321"]

  tags = {
    Environment = "Production"
  }
}
```
