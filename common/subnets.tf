resource "aws_subnet" "public_web1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.10.0/24"
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
# resource "aws_subnet" "private_db1" {
#   vpc_id            = aws_vpc.main.id
#   cidr_block        = "10.0.30.0/24"
#   availability_zone = "ap-northeast-1a"
#   tags = {
#     Name = "terraform_db1"
#   }
# }
# resource "aws_subnet" "private_db2" {
#   vpc_id            = aws_vpc.main.id
#   cidr_block        = "10.0.40.0/24"
#   availability_zone = "ap-northeast-1c"
#   tags = {
#     Name = "terraform_db2"
#   }
# }