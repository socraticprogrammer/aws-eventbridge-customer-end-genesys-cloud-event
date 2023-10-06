# Genesys Cloud variables

variable "integration_name" {
  type    = string
  default = "Amazon EventBridge Source"
}

variable "topic_filters" {
  type = list(string)
}

variable "event_source_suffix" {
  type = string
}

# AWS variables

# Common variables

variable "aws_account_region" {
  type = string
}
