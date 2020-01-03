resource "aws_db_instance" "default" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "terraform_db"
  username             = var.username
  password             = var.password
  parameter_group_name = "default.mysql5.7"
  db_subnet_group_name = aws_db_subnet_group.default.name
  skip_final_snapshot  = true
  multi_az = true
}

resource "aws_db_subnet_group" "default" {
  name       = "terraform_rds"
  subnet_ids = [var.subnet1_id, var.subnet2_id]

  tags = {
    Name = "terraform_rds"
  }
}