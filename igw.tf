## https://registry.terraform.io/providers/hashicorp/aws/3.3.0/docs/resources/internet_gateway

resource "aws_internet_gateway" "main" {
  #vpc id
  vpc_id = aws_vpc.main.id

  ##tags
  tags = {
    Name = "main"
  }

}
