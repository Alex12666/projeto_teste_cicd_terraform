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
  map_public_ip_on_launch = true

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


# 1. Criar a Tabela de Rotas dizendo: "Tudo que for pra fora (0.0.0.0/0), vai pelo doom_net"
resource "aws_route_table" "my_route_table" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.doom_net.id
  }

  tags = {
    Name = "rota-para-internet"
  }
}

# 2. Associar (Ligar) essa tabela à sua Subnet
resource "aws_route_table_association" "my_assoc" {
  subnet_id      = aws_subnet.my_subnet.id
  route_table_id = aws_route_table.my_route_table.id
}