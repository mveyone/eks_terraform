resource "aws_nat_gateway" "gw1" {

  #the Allocation ID of the Elastic IP address for the gateway
  allocation_id = aws_eip.nat1.id

  #the subnet if of the subnet in wich to place the gateway
  subnet_id = aws_subnet.public_1.id

  # A map of tags to assign to the resource.
  tags = {
    Name = "NAT-1"
  }

}

## second NAT
resource "aws_nat_gateway" "gw2" {

  #the Allocation ID of the Elastic IP address for the gateway
  allocation_id = aws_eip.nat2.id

  #the subnet if of the subnet in wich to place the gateway
  subnet_id = aws_subnet.public_2.id

  # A map of tags to assign to the resource.
  tags = {
    Name = "NAT-2"
  }

}