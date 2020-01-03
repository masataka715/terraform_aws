module "common" {
  source      = "../common"
  web_sq_name = "terraform_web"
  rds_sg_name = "terraform_rds"
  port        = 80
  cidr_blocks = ["0.0.0.0/0"]
}

module "web_server" {
  source                 = "../modules/ec2"
  instance_type          = "t3.micro"
  vpc_id                 = module.common.vpc_id
  subnet_id              = module.common.public_web1_subent_id
  vpc_security_group_ids = [module.common.http_sg_id, module.common.rds_sg_id]
  ec2_tags_name          = "terraform_web_server"
}

module "rds" {
  source     = "../modules/rds"
  username   = var.rds_username
  password   = var.rds_password
  subnet1_id = module.common.private_rds1_subent_id
  subnet2_id = module.common.private_rds2_subent_id
}
