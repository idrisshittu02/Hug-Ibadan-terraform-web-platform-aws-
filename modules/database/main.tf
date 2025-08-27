# DB Subnet Group
resource "aws_db_subnet_group" "main" {
  name       = "${var.environment}-db-subnet-group"
  subnet_ids = var.database_subnet_ids

  tags = {
    Name        = "${var.environment}-db-subnet-group"
    Environment = var.environment
  }
}

# DB Parameter Group
resource "aws_db_parameter_group" "main" {
  family = "mysql8.0"
  name   = "${var.environment}-db-params"

  parameter {
    name  = "innodb_buffer_pool_size"
    value = "{DBInstanceClassMemory*3/4}"
  }

  tags = {
    Name        = "${var.environment}-db-params"
    Environment = var.environment
  }
}

# RDS Instance
resource "aws_db_instance" "main" {
  identifier              = "${var.environment}-database"
  engine                  = "mysql"
  engine_version          = "8.0"
  instance_class          = var.db_instance_class

  allocated_storage       = var.allocated_storage
  max_allocated_storage   = var.allocated_storage * 2
  storage_type            = "gp2"
  storage_encrypted       = true

  db_name                 = var.db_name
  username                = var.db_username
  password                = var.db_password

  vpc_security_group_ids  = [var.database_security_group_id]
  db_subnet_group_name    = aws_db_subnet_group.main.name
  parameter_group_name    = aws_db_parameter_group.main.name

  backup_retention_period = var.backup_retention_period
  backup_window           = "03:00-04:00"
  maintenance_window      = "sun:04:00-sun:05:00"

  multi_az                = var.multi_az
  publicly_accessible     = false
  deletion_protection     = false
  skip_final_snapshot     = true
  copy_tags_to_snapshot   = true

  tags = {
    Name        = "${var.environment}-database"
    Environment = var.environment
  }
}
