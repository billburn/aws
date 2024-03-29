terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.58.0"
    }
  }
}

resource "aws_instance" "sample_ec2" {
  ami = "ami-005f9685cb30f234b"
  availability_zone = "us-east-1a"
  instance_type = "t3.small"
  key_name = "devsecops-key-01"
  security_groups = [ "ssh-from-home" ]

  tags = {
    Name            = "devsecops-server-01"
    Date            = "03-12-2023"
  }

}