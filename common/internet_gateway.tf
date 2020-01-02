resource "aws_internet_gateway" "igw_for_vpc" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "terraform_igw"
  }
}