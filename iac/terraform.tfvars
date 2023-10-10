# Genesys Cloud variables

integration_name    = "Customer end topic"
event_source_suffix = "customer-end-topic"
# Event topics to subsribe to. Possible values can be found at https://developer.genesys.cloud/api/rest/v2/notifications/available_topics
topic_filters = [
  "v2.detail.events.conversation.{id}.customer.end"
]

# Common variables

# Region of the AWS account
aws_account_region = "us-east-1"
