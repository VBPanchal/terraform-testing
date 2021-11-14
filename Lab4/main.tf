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

module "network" {
  source = "./modules/network"
  availability_zones = var.availability_zones
  cidr_block = var.cidr_block

}


module "app_server" {
  source = "./modules/app_server"
  ami = var.ami
  vpc_id = module.network.main_vpc_id
  subnet_id = module.network.subnet1_id
  instance_type = var.instance_type
  app_server_count = var.app_server_count

}