variable "aws_account_region" {
  type = string
}

variable "aws_account_id" {
  type = string
}

variable "genesys_cloud_org_id" {
  type = string
}

variable "event_source_suffix" {
  type = string
}

variable "lambda" {
  type = object({
    function_name = string
    arn = string
  })

  default = {
    function_name = "value"
    arn = "value"
  }
}
