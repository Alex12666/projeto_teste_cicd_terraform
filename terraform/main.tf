resource "aws_instance" "example" {
  ami  = "ami-0fe18bc3cfa53a248"

  instance_type = "t3.micro"

  key_name = "Devops-Automation"

  vpc_security_group_ids = [aws_security_group.allow_sg.id]

  subnet_id = aws_subnet.my_subnet.id
 

  tags = {
    Name = "DEVAlexandre"
  }
}
