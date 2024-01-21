provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo_without_count" {
  instances = {
    "instance1" = {
      ami           = "ami-xxxxxxxxxxxxxxxxx"
      instance_type = "t2.micro"
    }

    "instance2" = {
      ami           = "ami-xxxxxxxxxxxxxxxxx"
      instance_type = "t2.micro"
    }

    "instance3" = {
      ami           = "ami-xxxxxxxxxxxxxxxxx"
      instance_type = "t2.micro"
    }

    # Add more instances as needed
  }

  dynamic "instance" {
    for_each = aws_instance.example_without_count.instances

    content {
      ami           = instance.value.ami
      instance_type = instance.value.instance_type

      tags = {
        Name = "Ec2DemoInstance-${instance.key}"
      }
    }
  }
}
