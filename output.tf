output "instance_public_ip" {
    value = aws_instance.ngir.public_ip
  
}

output "ip" {
    value ="https://${aws_instance.ngir.public_ip}"
  
}
