terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
provider "aws" {
  region     = "region"
  access_key = "********"
  secret_key = "***********"
}

resource "aws_instance" "web" {
  ami           = "ami-0c1a7f89451184c8b"
  instance_type = "t3.xlarge"

  tags = {
    Name = "Big Server"
  }
}