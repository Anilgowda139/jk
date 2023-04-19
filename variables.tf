variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "ap-south-1"
}

variable "key_name" {
  description = " SSH keys to connect to ec2 instance"
  default     =  "web-1"
}

variable "instance_type" {
  description = "instance type for ec2"
  default     =  "t2.micro"
}

variable "security_group" {
  description = "Name of security group"
  default     = "websg-2"
}

variable "tag_name" {
  description = "Tag Name of for Ec2 instance"
  default     = "my-ec2-instance"
}

variable "ami_id" {
  description = "AMI for Ubuntu Ec2 instance"
  default     = "ami-02eb7a4783e7e9317"
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  default = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "The name of the VPC"
  default = "my-vpc"
}

variable "internet_gateway_name" {
  description = "The name of the internet gateway"
  default = "my-internet-gateway"
}

variable "public_subnet_cidr_block" {
  description = "The CIDR block for the public subnet"
  default = "10.0.1.0/24"
}

variable "public_subnet_availability_zone" {
  description = "The availability zone for the public subnet"
  default = "us-west-2a"
}

variable "public_subnet_name" {
  description = "The name of the public subnet"
  default = "my-public-subnet"
}

variable "private_subnet_cidr_block" {
  description = "The CIDR block for the private subnet"
  default = "10.0.2.0/24"
}

variable "private_subnet_availability_zone" {
  description = "The availability zone for the private subnet"
  default = "us-west-2b"
}

variable "private_subnet_name" {
  description = "The name of the private subnet"
  default = "my-private-subnet
}
