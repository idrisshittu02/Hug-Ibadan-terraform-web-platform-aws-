variable "environment" {
  description = "Environment name"
  type        = string
}

variable "alb_arn_suffix" {
  description = "ALB ARN suffix for CloudWatch metrics"
  type        = string
}

variable "target_group_arn_suffix" {
  description = "Target Group ARN suffix for CloudWatch metrics"
  type        = string
}

variable "notification_email" {
  description = "Email for notifications"
  type        = string
  default     = ""
}