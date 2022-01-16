provider "aws" {
    region = var.aws_region
}

terraform {
  backend "s3" {
      bucket = "sharks-terra-backend12345"
      key = "terraform.tfstate"
      region = "us-east-2"
      dynamodb_table = "terraform"
  }
}

