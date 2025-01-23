provider "aws" {
  region = "us-west-1"
}

module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 5.0"

  name = "GitHubActions-EC2"
  instance_count = 1
  ami = "ami-07d2649d67dbe8900"  # Replace with your desired AMI
  instance_type = "t2.micro"

  tags = {
    Environment = "Test"
    Name        = "GitHubActions-EC2"
  }
}
