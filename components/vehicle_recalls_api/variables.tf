variable "aws_region" {
  type    = "string"
  default = "eu-west-1"
}

variable "project" {
  type    = "string"
  default = "vehicle_recalls"
}

variable "bucket_prefix" {
  type  = "string"
}

variable "environment" {
  type = "string"
}

variable "lambda_s3_key" {
  type    = "string"
  default = "default, when I am only creating bucket, I don't need it"
}

variable "lambda_env_vars" {
  type    = "map"
  default = {
    "SMMT_API_URI" = "https://o2jf3z94li.execute-api.eu-west-2.amazonaws.com/dev/vincheck"
    "SMMT_API_KEY" = "localApiKey"
  }
}

variable "account_id" {
  type = "string"
  default = "Account ID where we are creating resources"
}

variable "project" {
  type = "string"
  default = "Account ID where we are creating resources"
}

variable "fake_smmt_component_name" {
  type = "string"
  default = "Optional fake smmt component"
}
