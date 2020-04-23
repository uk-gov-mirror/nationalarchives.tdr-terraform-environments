resource "random_password" "keycloak_password" {
  length  = 16
  special = false
}

resource "random_uuid" "client_secret" {}

resource "aws_ssm_parameter" "database_url" {
  name  = "/${var.environment}/keycloak/database/url"
  type  = "SecureString"
  value = aws_rds_cluster.keycloak_database.endpoint
}

resource "aws_ssm_parameter" "database_username" {
  name  = "/${var.environment}/keycloak/database/username"
  type  = "SecureString"
  value = aws_rds_cluster.keycloak_database.master_username
}

resource "aws_ssm_parameter" "database_password" {
  name  = "/${var.environment}/keycloak/database/password"
  type  = "SecureString"
  value = aws_rds_cluster.keycloak_database.master_password
}

resource "aws_ssm_parameter" "keycloak_admin_password" {
  name  = "/${var.environment}/keycloak/admin/password"
  type  = "SecureString"
  value = random_password.password.result
}

resource "aws_ssm_parameter" "keycloak_admin_user" {
  name  = "/${var.environment}/keycloak/admin/user"
  type  = "SecureString"
  value = "tdr-keycloak-admin-${var.environment}"
}

resource "aws_ssm_parameter" "keycloak_client_secret" {
  name  = "/${var.environment}/keycloak/client/secret"
  type  = "SecureString"
  value = random_uuid.client_secret.result
}
