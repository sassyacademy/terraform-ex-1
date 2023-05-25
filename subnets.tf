resource "aws_subnet" "tf-pri-subnet1" {
  vpc_id     = aws_vpc.demo-vpc.id
  cidr_block = "10.0.0.0/26"

  tags = {
    Name = "tf-pri-subnet1"
  }
}

resource "aws_subnet" "tf-pri-subnet2" {
  vpc_id     = aws_vpc.demo-vpc.id
  cidr_block = "10.0.0.64/26"

  tags = {
    Name = "tf-pri-subnet2"
  }
}

  resource "aws_subnet" "tf-pub-subnet1" {
  vpc_id     = aws_vpc.demo-vpc.id
  cidr_block = "10.0.0.128/26"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "tf-pub-subnet1"
  }
}

resource "aws_subnet" "tf-pub-subnet2" {
  vpc_id     = aws_vpc.demo-vpc.id
  cidr_block = "10.0.0.192/26"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "tf-pub-subnet2"
  }
}