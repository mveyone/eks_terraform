resource "aws_route_table_association" "public1" {

  subnet_id = aws_subnet.public_1.id


  route_table_id = aws_route_table.public.id

}

resource "aws_route_table_association" "public2" {

  subnet_id = aws_subnet.public_2.id


  route_table_id = aws_route_table.public.id

}

## assocication to private subnet 1 

resource "aws_route_table_association" "private1" {

  subnet_id = aws_subnet.private-1.id


  route_table_id = aws_route_table.private1.id

}
## assocication to private subnet 2 
resource "aws_route_table_association" "private2" {

  subnet_id = aws_subnet.private-2.id


  route_table_id = aws_route_table.private2.id

}



