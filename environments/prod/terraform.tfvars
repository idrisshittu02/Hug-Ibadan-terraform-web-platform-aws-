# Production Environment Configuration
aws_region  = "us-east-1"
environment = "prod"

# Network Configuration
vpc_cidr                = "10.1.0.0/16"
availability_zones      = ["us-east-1a", "us-east-1b"]
public_subnet_cidrs     = ["10.1.1.0/24", "10.1.2.0/24"]
private_subnet_cidrs    = ["10.1.10.0/24", "10.1.20.0/24"]
db_subnet_cidrs         = ["10.1.100.0/24", "10.1.200.0/24"]

# Compute Configuration
instance_type    = "t3.small"
min_size         = 2
max_size         = 6
desired_capacity = 3
key_name         = ""

# Database Configuration
db_instance_class        = "db.t3.small"
db_name                 = "webapp"
db_username             = "admin"
db_password             = "SuperSecurePassword123!"
allocated_storage       = 50
backup_retention_period = 7
multi_az               = true

# Monitoring Configuration
notification_email = "your-email@example.com"