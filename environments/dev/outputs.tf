output "vpc_id" {
  description = "VPC ID"
  value       = module.networking.vpc_id
}

output "alb_dns_name" {
  description = "Load Balancer DNS name"
  value       = module.compute.alb_dns_name
}

output "website_url" {
  description = "Website URL"
  value       = "http://${module.compute.alb_dns_name}"
}

output "database_endpoint" {
  description = "Database endpoint"
  value       = module.database.db_instance_endpoint
  sensitive   = true
}

output "dashboard_url" {
  description = "CloudWatch Dashboard URL"
  value       = module.monitoring.dashboard_url
}
