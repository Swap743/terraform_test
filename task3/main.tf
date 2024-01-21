provider "aws" {
  region = "us-east-1"
}

variable "instance_count" {
  type    = number
  default = 3 
}

resource "aws_instance" "demo_with_count" {
  count = var.instance_count

  ami           = "ami-xxxxxxxxxxxxxxxxx"
  instance_type = "t2.micro"

  tags = {
    Name       = "Ec2DemoInstance-${count.index + 1}"
    CommonTag  = "Ec2Instances"
    IndividualTag = "Instance-${count.index + 1}"
  }
}
