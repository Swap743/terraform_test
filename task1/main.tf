provider "aws" {
  region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "task1" {
  ami           = "ami-xxxxxxxxxxxxxxxxx"  # Replace with your desired AMI ID
  instance_type = "t2.micro"  # Replace with your desired instance type

  tags = {
    Name = "Ec2DemoInstance"
  }
}
