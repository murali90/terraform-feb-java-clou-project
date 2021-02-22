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

# output "vpc_cidr" {
#   value = "${aws_vpc.my_vpc.cidr_block}"  
  
# }

