resource "aws_cloudwatch_event_rule" "aws-eventbridge-csutomer-end-event-rule" {
  name           = "aws-eventbridge-customer-end-event-rule"
  event_bus_name = "aws.partner/genesys.com/cloud/${var.genesys_cloud_org_id}/${var.event_source_suffix}"
  event_pattern  = <<EOF
{
  "account": [
    "${var.aws_account_id}"
  ]
}
EOF

  depends_on = [
    aws_cloudwatch_event_bus.aws-eventbridge-customer-end-event-bus
  ]
}
