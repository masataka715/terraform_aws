module "common" {
  source  = "./common"
}

module "web_server" {
  source  = "./modules/ec2"
  instance_type = "t3.micro"
  vpc_id = module.common.vpc_id
  subnet_id = module.common.public_web1_subent_id
  ec2_tags_name = "terraform_web_server"
}