terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "sa-east-1"
}

resource "aws_instance" "a_simple_testing_12-06-2024" {
  ami           = "ami-0df032b0fbc220383"
  instance_type = "t2.micro"

  tags = {
    Name = "another-example_12-06-2024"
  }
}