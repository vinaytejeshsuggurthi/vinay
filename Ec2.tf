provider "aws" {
  region = "us-east-2"
  access_key = "AKIAQNRZTR4KI73BYXUQ"
  secret_key = "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"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["029111848724"]
}

resource "aws_instance" "web" {
  ami           = "ami-0520e698dd500b1d1 "
  instance_type = "t2.micro"

  tags {
    Name = "HelloWorld"
  }
}
output "ip"{
value= "${aws_instance.web.public_ip}"
}
