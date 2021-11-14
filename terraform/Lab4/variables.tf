#Declaring variables

variable "availability_zones" {
  type = list(string)
}

variable "cidr_block" {
  type        = string
  description = "VPC cidr block. Example: 172.16.0.0/16"
}

variable "instance_type" {
  type        = string
  description = "Your EC2 instance type"
}

variable "ami" {
  type        = string
  description = "The AMI ID of your AMI image"
}

variable "app_server_count" {
  type        = number
  description = "Number of ec2 appserver instances"
}
