#https://registry.terraform.io/providers/hashicorp/aws/2.43.0/docs/resources/subnet

resource "aws_subnet" "public_1" {
  #vpc_id
  vpc_id = aws_vpc.main.id

  #cidr_block
  cidr_block = "192.168.0.0/18"

  # az
  availability_zone = "us-east-1a"

  #map public ip on Launch //required for eks //every instance connected to this subnet will get the public adress
  map_public_ip_on_launch = true

  tags = {
    Name                        = "public-us-east-1a"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb"    = 1

  }


}

##second public subent
resource "aws_subnet" "public_2" {
  #vpc_id
  vpc_id = aws_vpc.main.id

  #cidr_block
  cidr_block = "192.168.64.0/18"

  # az
  availability_zone = "us-east-1b"

  #map public ip on Launch //required for eks //every instance connected to this subnet will get the public adress
  map_public_ip_on_launch = true

  tags = {
    Name                        = "public-us-east-1b"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb"    = 1

  }


}

##Private subnet 1
resource "aws_subnet" "private-1" {
  #vpc_id
  vpc_id = aws_vpc.main.id

  #cidr_block
  cidr_block = "192.168.128.0/18"

  # az
  availability_zone = "us-east-1a"

  tags = {
    Name                              = "private-us-east-1a"
    "kubernetes.io/cluster/eks"       = "shared"
    "kubernetes.io/role/internal-elb" = 1

  }


}

##Private subnet 2
resource "aws_subnet" "private-2" {
  #vpc_id
  vpc_id = aws_vpc.main.id

  #cidr_block
  cidr_block = "192.168.192.0/18"

  # az
  availability_zone = "us-east-1b"

  tags = {
    Name                              = "private-us-east-1b"
    "kubernetes.io/cluster/eks"       = "shared"
    "kubernetes.io/role/internal-elb" = 1

  }


}