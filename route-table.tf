resource "aws_route_table" "main_route" {
  vpc_id = "${aws_vpc.vpc.id}"

  route {
    cidr_block = "10.1.1.0/24"
    gateway_id = "${aws_internet_gateway.vpc-igw.id}"
  }


  tags = {
    Name = "main-route"
  }
}