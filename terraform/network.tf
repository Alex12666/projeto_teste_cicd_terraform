resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_s3_bucket" "s3-buket-s3" {
  bucket = "s3-buket-s3"

  tags = {
    Name        = "My bucket"
    Environment = "Devalexandre"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}

resource "aws_internet_gateway" "doom_net" {
    vpc_id = aws_vpc.my_vpc.id

     tags = {
    Name = "doom_net"
  }
  
}


