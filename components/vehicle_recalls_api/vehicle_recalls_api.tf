module "vehicle_recalls_api" {
  source                    = "../../modules/lambda"
  aws_region                = "${var.aws_region}"                             # has default value
  project                   = "${var.project}"                                # has default value
  bucket_prefix             = "${var.bucket_prefix}"                          # has default value
  environment               = "${var.environment}"
  lambda_s3_key             = "${var.lambda_s3_key}"
  lambda_function_name      = "vehicle-recalls-api"
  lambda_handler            = "src/main.handler"
  lambda_publish            = "true"
  lambda_memory_size        = "256"
  lambda_timeout            = "15"
  lambda_ver                = "$LATEST"
  lambda_env_vars           = {
    SMMT_API_URI = "${data.terraform_remote_state.fake_smmt.api_gateway_url}/vincheck"
    SMMT_API_KEY = "localApiKey"
  }
}
