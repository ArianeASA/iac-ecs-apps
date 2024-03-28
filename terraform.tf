terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.23.1"
    }
  }

  required_version = "~> 1.2"

  backend "s3" {
    bucket = "terraforms-bucket"
    key    = "states-${var.name_app}-ecs"
    region = "us-east-2"
  }
}