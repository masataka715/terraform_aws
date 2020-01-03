resource "aws_instance" "default" {
  ami                    = "ami-0c3fd0f5d33134a76"
  instance_type          = var.instance_type
  vpc_security_group_ids = [var.vpc_security_group_id]
  subnet_id              = var.subnet_id
  tags = {
    Name = var.ec2_tags_name
  }

  user_data = file("./modules/ec2/user_data.sh")
}

resource "aws_eip" "default" {
  instance = aws_instance.default.id
  vpc      = true
}

