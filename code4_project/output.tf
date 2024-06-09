# Exporting Outputs
output "my_public_ip" {
  value = aws_lightsail_instance.project4.public_ip_address
}
output "my_private_ip" {
  value = aws_lightsail_instance.project4.private_ip_address
}