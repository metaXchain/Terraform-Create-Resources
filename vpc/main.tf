provider "aws" {
	region = "us-west-2"
}

resource "aws_vpc" "main" {
  cidr_block = "172.17.0.0/16"
}