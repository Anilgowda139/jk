provider "aws" {
  access_key = "<your_access_key>"
  secret_access_key = "<your_secret_access_key>"
  region = "<aws_region>"
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "my_subnet" {
  cidr_block = "10.0.1.0/24"
  vpc_id = aws_vpc.my_vpc.id
}

resource "aws_security_group" "my_security_group" {
  name_prefix = "my-security-group"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "my_ec2_instance" {
  ami = "ami-0c55b159cb2c71c99"
  instance_type = "t2.micro"
  key_name = "my-key-pair"
  subnet_id = aws_subnet.my_subnet.id
  vpc_security_group_ids = [aws_security_group.my_security_group.id]

  tags = {
    Name = "my-ec2-instance"
  }
}
