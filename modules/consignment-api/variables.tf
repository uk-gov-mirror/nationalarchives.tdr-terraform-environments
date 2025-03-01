variable "alb_dns_name" {}

variable "alb_target_group_arn" {}

variable "alb_zone_id" {}

variable "app_name" {}

variable "auth_url" {}

variable "frontend_url" {}

variable "common_tags" {}

variable "database_availability_zones" {}

variable "db_migration_sg" {}

variable "dns_zone_id" {}

variable "environment" {}

variable "environment_full_name" {}

variable "kms_key_id" {}

variable "private_subnets" {}

variable "public_subnets" {}

variable "region" {}

variable "vpc_id" {}

variable "dns_zone_name_trimmed" {}

variable "ip_whitelist" {
  description = "IP addresses allowed to access"
  default     = ["0.0.0.0/0"]
}

variable "create_users_security_group_id" {
  type = list(string)
}
