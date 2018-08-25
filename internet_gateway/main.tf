provider "aws" {
	region = "us-west-2"
}


data "aws_availability_zones" "available" {}
resource "aws_vpc" "main" {
  cidr_block = "172.17.0.0/16"
}
# IGW for the public subnet
resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.main.id}"
}

# Route the public subnet traffic through the IGW
resource "aws_route" "internet_access" {
  route_table_id         = "${aws_vpc.main.main_route_table_id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.gw.id}"
}
