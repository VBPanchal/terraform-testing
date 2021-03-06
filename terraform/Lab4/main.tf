terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.13.4"
}


provider "aws" {
  profile = "default"
  region  = "us-west-2"
}


module "app_server" {
  source = "./modules/app_server"
  ami = var.ami
  instance_type = var.instance_type
  app_server_count = var.app_server_count

}
