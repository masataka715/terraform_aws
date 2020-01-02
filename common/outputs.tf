output "vpc_id" {
    value = aws_vpc.main.id
}

output "public_web1_subent_id" {
    value = aws_subnet.public_web1.id
}

# output "public_web2_subent_id" {
#     value = aws_subnet.public_web2.id
# }

# output "private_db1_subent_id" {
#     value = aws_subnet.private_db1.id
# }

# output "private_db2_subent_id" {
#     value = aws_subnet.private_db2.id
# }