provider "aws" {
  region = "us-east-2"
  access_key = "AKIAQNRZTR4KECHBTHXA"
  secret_key = "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"
}

resource "aws_instance" "web" {
  ami           = "ami-0520e698dd500b1d1 "
  instance_type = "t2.micro"

}
output "ip"{
value= "${aws_instance.web.public_ip}"
}
