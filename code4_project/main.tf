# Creating AWS Lighstail Instance 
resource "aws_lightsail_instance" "project4" {
  name              = "project4"
  availability_zone = "us-east-1a"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_3_0"
  user_data         = file("script.sh")
  key_pair_name     = "week2"
  tags = {
    team       = "DevOps"
    env        = "dev"
    created_by = "idriss_b"
  }
}

# Creating Group 
resource "aws_iam_group" "cloud" {
  name = "cloudteam"
}

# Creating User 
resource "aws_iam_user" "new-user" {
  name = "u5bt2024"
} 