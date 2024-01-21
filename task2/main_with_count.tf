provider "aws" {
  region = "us-east-1"
}

variable "instance_count" {
  type    = number
  default = 3  # Change the count as per your requirement
}

resource "aws_instance" "demo_with_count" {
  count = var.instance_count

  ami           = "ami-xxxxxxxxxxxxxxxxx"
  instance_type = "t2.micro"

  tags = {
    Name = "Ec2DemoInstance-${count.index + 1}"
  }
}
