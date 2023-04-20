variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "us-west-1"
}

variable "key_name" {
  description = " SSH keys to connect to ec2 instance"
  default     =  "web-2"
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
  default     = "ami-014d05e6b24240371"
}


