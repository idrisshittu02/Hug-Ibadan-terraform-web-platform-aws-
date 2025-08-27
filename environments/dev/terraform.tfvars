# Development Environment Configuration
aws_region  = "us-east-1"
environment = "dev"

# Network Configuration
vpc_cidr                = "10.0.0.0/16"
availability_zones      = ["us-east-1a", "us-east-1b"]
public_subnet_cidrs     = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs    = ["10.0.10.0/24", "10.0.20.0/24"]
db_subnet_cidrs         = ["10.0.100.0/24", "10.0.200.0/24"]

# Compute Configuration
instance_type    = "t3.micro"
min_size         = 1
max_size         = 3
desired_capacity = 2
key_name         = ""  # Leave empty if you don't have a key pair

# Database Configuration
db_instance_class        = "db.t3.micro"
db_name                 = "webapp"
db_username             = "admin"
db_password             = "ChangeMe123!"
allocated_storage       = 20
backup_retention_period = 1
multi_az               = false

# Monitoring Configuration
notification_email = ""  # Add your email here for alerts