# resource "aws_vpc" "main" {
#   cidr_block       = var.vpc_cidr_block
#   instance_tenancy = "default"

#   tags = {
#     Name = "main"
#   }
# }

# resource "aws_internet_gateway" "gw" {
#   vpc_id = aws_vpc.main.id

#   tags = {
#     Name = "main"
#   }
# }

# resource "aws_subnet" "main" {
#   vpc_id     = aws_vpc.main.id
#   cidr_block = var.subnet1_cidr_block
#   availability_zone = data.aws_availability_zones.availability_zone.names[0]

#   tags = {
#     Name = "Main"
#   }
# }

# resource "aws_subnet" "main2" {
#   vpc_id     = aws_vpc.main.id
#   cidr_block = var.subnet2_cidr_block
#   availability_zone = data.aws_availability_zones.availability_zone.names[1]
  
#   tags = {
#     Name = "Main"
#   }
# }

# resource "aws_route_table" "route_table" {
#   vpc_id = aws_vpc.main.id

#   route {
#     cidr_block = var.igw_cidr_block
#     gateway_id = aws_internet_gateway.gw.id
#   }

#   tags = {
#     Name = "main"
#   }
# }

# resource "aws_route_table_association" "a" {
#   subnet_id      = aws_subnet.main.id
#   route_table_id = aws_route_table.route_table.id
# }

# resource "aws_route_table_association" "b" {
#   subnet_id      = aws_subnet.main2.id
#   route_table_id = aws_route_table.route_table.id
# }

# # Declare the data source
# data "aws_availability_zones" "availability_zone" {
# }
