# 1. AWS Provider Configuration
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Version locking for AWS provider
    }
  }
}

provider "aws" {
  region = "ap-south-1" # Deployment targeting Mumbai Region
}

# 2. Resource Block: Spin up a free-tier Ubuntu Linux Server
resource "aws_instance" "my_first_cloud_server" {
  ami           = "ami-03f4fa076d2981b45" # Ubuntu 24.04 LTS AMI ID for ap-south-1
  instance_type = "t2.micro"             # Free-tier eligible instance type

  tags = {
    Name        = "aspire-ops-node-1"
    Environment = "learning"
    ManagedBy   = "Terraform"
  }
}

# 3. Output the public IP of the newly created server
output "server_public_ip" {
  value       = aws_instance.my_first_cloud_server.public_ip
  description = "The public IP address of the deployed EC2 instance."
}