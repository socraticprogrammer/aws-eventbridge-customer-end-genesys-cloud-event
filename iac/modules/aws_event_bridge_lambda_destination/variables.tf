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
    function_name = "test-function"
    arn = "arn:aws:lambda:us-east-1:424665266771:function:test-function"
  }
}
