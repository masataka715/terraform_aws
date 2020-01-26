resource "aws_subnet" "public_web1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "20.0.10.0/24"
  availability_zone = "ap-northeast-1a"
  tags = {
    Name = "terraform_web1"
  }
}
# resource "aws_subnet" "public_web2" {
#   vpc_id            = aws_vpc.main.id
#   cidr_block        = "10.0.20.0/24"
#   availability_zone = "ap-northeast-1c"
#   tags = {
#     Name = "terraform_web2"
#   }
# }
resource "aws_subnet" "private_rds1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "20.0.20.0/24"
  availability_zone = "ap-northeast-1a"
  tags = {
    Name = "terraform_rds1"
  }
}
resource "aws_subnet" "private_rds2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "20.0.21.0/24"
  availability_zone = "ap-northeast-1c"
  tags = {
    Name = "terraform_rds2"
  }
}
