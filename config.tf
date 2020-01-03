terraform {
  backend "s3" {
    bucket = "terraform191126"
    key    = "practice/terraform.tfstate"
    region = "ap-northeast-1"
  }
}

provider "aws" {
  region = "ap-northeast-1"
} 
