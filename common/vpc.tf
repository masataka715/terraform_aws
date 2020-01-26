# VPC
resource "aws_vpc" "main" {
  cidr_block       = "20.0.0.0/16" #クラスレスのIPアドレスの割当て
  instance_tenancy = "default"     #ハードウェアを共有する
  tags = {
    Name = "terraform_vpc"
  }
}
