resource "aws_iam_openid_connect_provider" "keycloak_provider" {
  client_id_list = ["tdr"]
  thumbprint_list = ["9e99a48a9960b14926bb7f3b02e22da2b0ab7280"]
  url = "https://auth.tdr-integration.nationalarchives.gov.uk/auth/realms/tdr/.well-known/openid-configuration"
}

resource "aws_cognito_identity_pool" "keycloak_identity_pool" {
  identity_pool_name = "TDRAuth${title(var.environment)}Pool"
  openid_connect_provider_arns = [aws_iam_openid_connect_provider.keycloak_provider.arn]
}