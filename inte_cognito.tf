resource "aws_apigatewayv2_authorizer" "auth" {
  api_id           = aws_apigatewayv2_api.apigw_http_endpoint.id
  authorizer_type  = "JWT"
  identity_sources = ["$request.header.Authorization"]
  name             = "cognito-authorizer"

  jwt_configuration {
    audience = [var.cognito_id]
    issuer   = "https://${var.cognito_name}/.well-known/openid-configuration"
  }
}