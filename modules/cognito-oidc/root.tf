resource "aws_iam_openid_connect_provider" "keycloak_provider" {
  client_id_list = ["tdr"]
  thumbprint_list = ["9e99a48a9960b14926bb7f3b02e22da2b0ab7280"]
  url = "https://auth.tdr-integration.nationalarchives.gov.uk/auth/realms/tdr/.well-known/openid-configuration"
}