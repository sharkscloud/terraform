provider "aws" {
    region = var.aws_region
    access_key= "AKIAXAORCYL6KVBPTKH6"
    secret_key = "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"
}

terraform {
  backend "s3" {
      bucket = "losersameregionbucket"
      key = "terraform.tfstate"
      region = "us-east-2"
      dynamodb_table = "terraform"
  }
}

