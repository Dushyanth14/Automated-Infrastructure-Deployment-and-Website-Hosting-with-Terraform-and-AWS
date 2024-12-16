resource "aws_vpc" "vpc-pro" {
    cidr_block = "10.0.0.0/16"

    tags = {
      Name = "vpc-pro"
    }
  
}


##public_subnet

resource "aws_subnet" "public_subnet" {
    vpc_id = aws_vpc.vpc-pro.id
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = true
    tags = {
      Name = "public_subnet_pro"
    }
      
}

##private_subnet

resource "aws_subnet" "private_subnet" {
    vpc_id = aws_vpc.vpc-pro.id
    cidr_block = "10.0.2.0/24"
    tags = {
      Name = "purivate_subnet_pro"
    }
      
}


##creating interent gateway

resource "aws_internet_gateway" "internet_gateway_pro" {
    vpc_id = aws_vpc.vpc-pro.id
  tags = {
    Name = "iinternet_gateway_pro"
  }
}

##creating routing table

resource "aws_route_table" "route_table_pro" {
  vpc_id = aws_vpc.vpc-pro.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gateway_pro.id
  }
}

resource "aws_route_table_association" "route_table_ass" {
    route_table_id = aws_route_table.route_table_pro.id
    subnet_id = aws_subnet.public_subnet.id
  
}
