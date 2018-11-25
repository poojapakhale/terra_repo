provider "aws" {
  region = "us-east-2"
}

resource "aws_vpc" "se_pe_Cel-prod" {
  cidr_block       = "10.50.0.0/20"
  instance_tenancy = "default"
 enable_dns_hostnames = "1"

  tags {
    Name = "se_pe_Cel-prod"
  }
}

resource "aws_subnet" "se_pe_Cel_public_2a" {
  vpc_id     = "${aws_vpc.se_pe_Cel-prod.id}"
  cidr_block = "10.50.0.0/20"
 availability_zone = "us-east-2a"

  tags {
    Name = "se_pe_Cel_public_2a"
  }
}



resource "aws_subnet" "se_pe_Cel_private_2a" {
  vpc_id     = "${aws_vpc.se_pe_Cel-prod.id}"
  cidr_block = "10.50.16.0/20"
 availability_zone = "us-east-2a"

  tags {
    Name = "se_pe_Cel_private_2a"
  }
}



resource "aws_subnet" "se_pe_Cel_private_2b" {
  vpc_id     = "${aws_vpc.se_pe_Cel-prod.id}"
  cidr_block = "10.50.32.0/20"
 availability_zone = "us-east-2b"

  tags {
    Name = "se_pe_Cel_private_2b"
  }
}

resource "aws_subnet" "se_pe_Cel_public_2b" {
  vpc_id     = "${aws_vpc.se_pe_Cel-prod.id}"
  cidr_block = "10.50.48.0/20"
 availability_zone = "us-east-2b"

  tags {
    Name = "se_pe_Cel_public_2b"
  }
}


resource "aws_subnet" "se_pe_Cel_private_2c" {
  vpc_id     = "${aws_vpc.se_pe_Cel-prod.id}"
  cidr_block = "10.50.23.0/20"
 availability_zone = "us-east-2c"

  tags {
    Name = "se_pe_Cel_private_2c"
  }
}
