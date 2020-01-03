resource "aws_route_table" "public_route" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw_for_vpc.id
  }
}

resource "aws_route_table_association" "public_web1" {
  subnet_id      = aws_subnet.public_web1.id
  route_table_id = aws_route_table.public_route.id
}

# resource "aws_route_table_association" "public_web2" {
#   subnet_id      = aws_subnet.public_web2.id
#   route_table_id = aws_route_table.public_route.id
# }
