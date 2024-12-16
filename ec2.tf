resource "aws_instance" "ngir" {
    ami ="ami-06b21ccaeff8cd686"
    instance_type = "t2.micro"
    key_name = "mumbai-ec2.pem"
    subnet_id = aws_subnet.public_subnet.id
    vpc_security_group_ids = [aws_security_group.security_groupo.id]
    associate_public_ip_address = true   ###this for getting public access
## installing nginx
  user_data = <<-EOF
             #!/bin/bash
             sudo yum install nginx -y
             sudo systemctl nginx start
             EOF

 tags = {
    Name = "NginxServer123456"
  }
}
