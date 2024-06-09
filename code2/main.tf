#Terraform Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.61.0"
    }
  }
}

#Provider Block
provider "aws" {
  region = "us-east-1"
}

# Creating AWS Lighstail Instance 
resource "aws_lightsail_instance" "custom" {
  name              = "custom"
  availability_zone = "us-east-1a"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_3_0"
  key_pair_name     = "week2"
  user_data         = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Deployed via Terraform</h1>' | sudo tee /var/www/html/index.html"
  tags = {
    team       = "DevOps"
    env        = "dev"
    created_by = "terraform"
  }
}

# Exporting Outputs
output "my_public_ip" {
  value = aws_lightsail_instance.custom.public_ip_address
}
output "my_username" {
  value = aws_lightsail_instance.custom.username
}
output "key_name" {
  value = aws_lightsail_instance.custom.key_pair_name
}