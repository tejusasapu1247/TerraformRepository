terraform {
 required_providers {
 aws = {
 source = "hashicorp/aws"
 version = "~> 3.73.0"
 }
}
 required_version = ">=0.14.9"
}
provider "aws" {
 region = "us-east-1"
}
resource "aws_instance" "app_server" {
 instance_type = "t2.micro"
 ami = "ami-0851b76e8b1bce90b"
tags = {
 Name = "MyVPC"
 }
}

