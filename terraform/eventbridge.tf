resource "aws_cloudwatch_event_rule" "daily_rule" {
  name                = "daily-report-rule"
  schedule_expression = "rate(1 day)"
}
