module "aws_account_identity" {
    source = "./modules/aws_account_identity"
}


module "genesys_cloud_event_bridge_integration" {
  source = "./modules/genesys_cloud_event_bridge_integration"
  aws_account_id      = module.aws_account_identity.account_id
  aws_account_region  = var.aws_account_region
  integration_name    = var.integration_name
  topic_filters       = var.topic_filters
  event_source_suffix = var.event_source_suffix
}

module "aws_event_bridge_lambda_destination" {
  source = "./modules/aws_event_bridge_lambda_destination"
  genesys_cloud_org_id = module.genesys_cloud_event_bridge_integration.genesys_cloud_org_id
  aws_account_id      = module.aws_account_identity.account_id
  aws_account_region  = var.aws_account_region
  event_source_suffix = var.event_source_suffix

}
