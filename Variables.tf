variable "vpc_cidr_block" {
  description = "This is the CIDR for the VPC"
}

variable "subnet1_cidr_block" {
  description = "This is the subnet1 CIDR block"
}

variable "subnet2_cidr_block" {
  description = "This is the subnet2 CIDR block"
}

variable "igw_cidr_block" {
    description = "This is the CIDR block for the internet gateway"
  
}

variable "region" {
  description = "This is the AWS region of the resources"
}
