resource "aws_cloudwatch_event_target" "aws-eventbridge-customer-end-event-target" {
  event_bus_name = "aws.partner/genesys.com/cloud/${var.genesys_cloud_org_id}/${var.event_source_suffix}"
  rule           = aws_cloudwatch_event_rule.aws-eventbridge-customer-end-event-rule.name
  arn            = var.lambda.arn
}
