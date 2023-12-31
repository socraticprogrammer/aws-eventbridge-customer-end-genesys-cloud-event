variable "integration_name" {
  type = string
}

variable "topic_filters" {
  type = list(string)
}

variable "event_source_suffix" {
  type = string
}

variable "aws_account_region" {
  type = string
}

variable "aws_account_id" {
  type = string
}
