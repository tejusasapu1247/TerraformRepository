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
 region = "ap-south-1"
}
resource "aws_instance" "app_server" {
 instance_type = "t2.micro"
 ami = "ami-08ee6644906ff4d6c"
tags = {
 Name = "MyVPC"
 }
}

