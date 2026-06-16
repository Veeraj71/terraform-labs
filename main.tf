# 1. Define the provider plugin we need
terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5.0"
    }
  }
}

# 2. Configure the provider
provider "local" {}

# 3. Define the actual resource infrastructure we want to build
resource "local_file" "devops_mission" {
  filename = "${path.module}/mission.txt"
  content  = "Day 7 Challenge Completed. Terraform Infrastructure as Code is officially alive on AcerAspire7! 🚀\n"
}