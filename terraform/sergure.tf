resource "aws_security_group" "allow_sg" {
  name        = "allow_ssh"
  description = "controle de trafego de informacao"
  vpc_id      = aws_vpc.my_vpc.id

  tags = {
    Name = "allow_tls"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
  security_group_id = aws_security_group.allow_sg.id
  cidr_ipv4         = "177.55.205.139/32"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_http" {
  security_group_id = aws_security_group.allow_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_https" {
  security_group_id = aws_security_group.allow_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic" {
  security_group_id = aws_security_group.allow_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" 

}