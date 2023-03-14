terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.58.0"
    }
  }
}

resource "aws_spot_instance_request" "sample_spot_ec2" {
  ami               = "ami-005f9685cb30f234b"
  availability_zone = "us-east-1b"
  instance_type     = "t3.small"
  key_name          = "devsecops-key-01"
  security_groups   = ["ssh-from-home"]
  spot_price        = "0.0069"
  spot_type         = "one-time"

  tags = {
    Name = "devsecops-spot-server-01"
    Date = "03-13-2023"
  }
}

output "instance_ip_addr" {
  value = aws_spot_instance_request.sample_spot_ec2.public_ip
}
