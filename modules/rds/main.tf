resource "aws_db_subnet_group" "this" {
  count      = var.create_subnet_group ? 1 : 0
  name       = "${var.identifier}-subnet-group"
  subnet_ids = var.subnet_ids
  tags       = var.tags
}

resource "aws_db_instance" "this" {
  identifier = var.identifier

  engine         = var.engine
  engine_version = var.engine_version
  instance_class = var.instance_class

  allocated_storage = var.allocated_storage
  storage_type      = "gp3"
  storage_encrypted = true

  db_name  = var.db_name
  username = var.username
  password = var.password

  vpc_security_group_ids = var.vpc_security_group_ids
  db_subnet_group_name   = var.create_subnet_group ? aws_db_subnet_group.this[0].name : var.db_subnet_group_name

  skip_final_snapshot = var.skip_final_snapshot

  tags = var.tags
}
