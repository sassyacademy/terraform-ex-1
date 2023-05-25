resource "aws_route_table" "tf-pub-rt" {
  vpc_id = aws_vpc.demo-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "var.route_table_name"
  }
}

resource "aws_route_table" "tf-pri-rt" {
  vpc_id = aws_vpc.demo-vpc.id

  tags = {
    Name = "var.route_table_name"
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.tf-pub-subnet1.id
  route_table_id = aws_route_table.tf-pub-rt.id
}

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.tf-pub-subnet2.id
  route_table_id = aws_route_table.tf-pub-rt.id
}

resource "aws_route_table_association" "c" {
  subnet_id      = aws_subnet.tf-pri-subnet1.id
  route_table_id = aws_route_table.tf-pri-rt.id
}

resource "aws_route_table_association" "d" {
  subnet_id      = aws_subnet.tf-pri-subnet2.id
  route_table_id = aws_route_table.tf-pri-rt.id
}