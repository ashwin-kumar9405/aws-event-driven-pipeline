resource "aws_lambda_function" "ingestion_lambda" {
  function_name = "data-ingestion-lambda"
  runtime       = "python3.9"
  handler       = "lambda_function.lambda_handler"
  filename      = "ingestion.zip"
}
