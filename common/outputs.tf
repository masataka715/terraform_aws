output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_web1_subent_id" {
  value = aws_subnet.public_web1.id
}

# output "public_web2_subent_id" {
#     value = aws_subnet.public_web2.id
# }

output "private_rds1_subent_id" {
    value = aws_subnet.private_rds1.id
}

output "private_rds2_subent_id" {
    value = aws_subnet.private_rds2.id
}

output "http_sg_id" {
    value = aws_security_group.web.id
}

output "rds_sg_id" {
    value = aws_security_group.rds.id
}