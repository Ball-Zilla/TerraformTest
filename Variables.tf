variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
  description = "This is the CIDR for the VPC"
}

variable "subnet1_cidr_block" {
  default = "10.0.1.0/24"
  description = "This is the subnet1 CIDR block"
}

variable "subnet2_cidr_block" {
  default = "10.0.2.0/24"
  description = "This is the subnet2 CIDR block"
}

variable "igw_cidr_block" {
    default = "0.0.0.0/0"
    description = "This is the CIDR block for the internet gateway"
  
}

variable "region" {
  default = "us-east-1"
  description = "This is the AWS region of the resources"
}