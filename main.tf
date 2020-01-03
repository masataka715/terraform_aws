module "common" {
  source              = "./common"
  security_group_name = "terraform_sg"
  port                = 80
  cidr_blocks         = ["0.0.0.0/0"]
}

module "web_server" {
  source                = "./modules/ec2"
  instance_type         = "t3.micro"
  vpc_id                = module.common.vpc_id
  subnet_id             = module.common.public_web1_subent_id
  vpc_security_group_id = module.common.security_group_id
  ec2_tags_name         = "terraform_web_server"
}
