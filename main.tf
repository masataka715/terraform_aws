module "web_server" {
  source  = "./modules/ec2"
  instance_type = "t2.micro"
  tags_name = "terraform_web_server"
}

output "public_dns" {
  value       = module.web_server.public_dns
}