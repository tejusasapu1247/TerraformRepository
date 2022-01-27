terraform { 
 required_providers {
 aws = {
 source = "hashicorp/aws"
 version = "~> 3.27"
 }
 }
 required_version = ">= 0.14.9"
}
provider "aws" {
region = "us-west-1"
}
resource "aws_instance" "app_server" {
 ami = "ami-a1b2c3d4"
 instance_type = "t2.micro"
 tags = {
 Name = "MyVPC"
 }
}
