resource "aws_iam_openid_connect_provider" "keycloak_provider" {
  client_id_list = ["tdr"]
  thumbprint_list = ["9E99A48A9960B14926BB7F3B02E22DA2B0AB7280"]
  url = "https://auth.tdr-integration.nationalarchives.gov.uk/auth/realms/tdr/.well-known/openid-configuration"
}