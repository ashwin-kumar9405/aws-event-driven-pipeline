resource "aws_lambda_function" "ingestion_lambda" {
  function_name = "data-ingestion-lambda"
  runtime       = "python3.9"
  handler       = "lambda_function.lambda_handler"

  role = aws_iam_role.lambda_role.arn

  filename         = "ingestion.zip"
  source_code_hash = filebase64sha256("ingestion.zip")
}
