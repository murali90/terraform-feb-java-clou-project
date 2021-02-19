provider  "aws" {
  region = "ap-south-1" 
}

terraform {
  backend "s3" {
    bucket = "febterrafromproject" 
    key    = "terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "javahome-tf"
  }
  }

resource "aws_vpc" "my_vpc" {
  cidr_block       = "${var.vpc_cidr}"
  instance_tenancy = "default"

  tags = {
    Name = "javahomevpc"
    Environment = "Dev"
    Location = "India" 
  }
  
}

output "vpc_cidr" {
    value = "${aws_vpc.my_vpc.cidr_block}"  
  
}

