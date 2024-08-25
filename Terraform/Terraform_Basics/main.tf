terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.76.1"
    }
  }
}
 

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_instance" {
  ami           = "ami-066784287e358dad1"
  instance_type = "t2.micro"

  tags = {
    Name = "Ec2WithTerraform"
  }
}