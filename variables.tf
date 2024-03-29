variable "aws_region" {
  description = "AWS region for all resources."

  type    = string
  default = "us-east-2"
}

variable "account_id" {
  type    = string
}

variable "access_key" {
  type    = string
}

variable "secret_key" {
  type    = string
}

variable "desired_capacity" {
  description = "desired number of running nodes"
  default     = 2
}

variable "container_port" {
  default =  "8080"
}

variable "memory" {
  default = "512"
}

variable "cpu" {
  default = "256"
}

variable "cognito_id" {
  type = string
}

variable "cognito_name" {
  type = string
}

variable "name_app" {
  type = string
  validation {
    condition = length(var.name_app) > 0
    error_message = "The name_app must be at least one character long."
  }
}

locals {
  cluster_name = "${var.name_app}-cluster"
  cluster_service = "${var.name_app}-service"
  cluster_task = "${var.name_app}-task"
  image_url = "${var.account_id}.dkr.ecr.${var.aws_region}/${var.name_app}:latest"
}



