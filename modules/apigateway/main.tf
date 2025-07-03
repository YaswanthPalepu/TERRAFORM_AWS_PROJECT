resource "aws_apigatewayv2_api" "main" {
  name          = var.api_name
  protocol_type = var.protocol_type
}
