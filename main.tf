  provider "aws" {}

variable "subnet_cidr_block" {
  description = "description"
}

resource "aws_vpc" "development-vpc" {
  cidr_block="10.0.0.0/16"

   tags = {
    Name = "AShok"
  }
}

resource "aws_subnet" "dev-subnet-1" {
  vpc_id     = aws_vpc.development-vpc.id
  cidr_block = var.subnet_cidr_block
  tags={
    Name ="subnet-1"
  }

}

output  "dev-vpc-id" {
  value= aws_vpc.development-vpc.id
}