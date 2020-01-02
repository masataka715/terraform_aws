resource "aws_instance" "default" {
  ami           = "ami-4af5022c"
  vpc_security_group_ids = [aws_security_group.default.id]  
  instance_type = var.instance_type
  tags = {
    Name = var.tags_name
  }

  user_data = file("./modules/ec2/user_data.sh")
}

output "public_dns" {
    value = aws_instance.default.public_dns
}

