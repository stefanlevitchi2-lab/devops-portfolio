terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# Create a Security Group for HTTP and SSH traffic
resource "aws_security_group" "web_sg" {
  name        = "portfolio-web-sg"
  description = "Allow HTTP and SSH inbound traffic"

  ingress {
    description = "Allow HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Provision a lightweight EC2 Instance
resource "aws_instance" "web_server" {
  ami           = "ami-0c55b159cbfafe1f0" # Ubuntu 22.04 LTS baseline
  instance_type = var.instance_type

  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = {
    Name        = "DevOps-Portfolio-Server"
    Environment = "Development"
  }
}