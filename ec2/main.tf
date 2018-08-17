provider "aws" {
	region = "us-west-2"
}

resource "aws_instance" "first_teraform" {
	ami = "ami-a9d09ed1"
	instance_type = "t2.micro"
	tags {
		Name = "First Terraform"
		Name2 = "Second Terraform"	
	}
}

