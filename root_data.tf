data "aws_ssm_parameter" "cost_centre" {
  name = "/mgmt/cost_centre"
}

data "aws_ssm_parameter" "trusted_ips" {
  name = "/mgmt/trusted_ips"
}

data "aws_route53_zone" "tdr_dns_zone" {
  name = "tdr-${local.environment_full_name}.nationalarchives.gov.uk"
}