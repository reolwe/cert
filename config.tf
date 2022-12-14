terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.30.0"
    }
  }
}

provider "aws" {
 region = "us-east-1"
 shared_credentials_file = "/home/mikhail/credentials"
}

resource "aws_instance" "build" {
  ami = "ami-08d4ac5b634553e16"
  instance_type = "t2.micro"
  key_name = "my-key200"
  security_groups = ["EC2SecurityGroup359"]
  tags = {
        Name = "build"
    }
}




resource "aws_instance" "stage" {
  ami = "ami-08d4ac5b634553e16"
  instance_type = "t2.micro"
  key_name = "my-key200"
  security_groups = ["EC2SecurityGroup359"]
    tags = {
        Name = "stage"
    }
}

