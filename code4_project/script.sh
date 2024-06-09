#Commands
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable http
echo '<h1>This is my first Terraform project</h1>.' | sudo tee /var/www/html/index.html