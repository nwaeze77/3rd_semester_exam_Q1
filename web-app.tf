resource "aws_default_vpc" "default_vpc" {
}

resource "aws_instance" "wanneski" {
  ami                    = data.aws_ami.ubuntu.id
  count                  = 1
  instance_type          = "t2.micro"
  key_name               = "uchekey1"
  user_data              = "userdata.tpl"
  vpc_security_group_ids = [aws_security_group.MySg.id]
  #subnet_id              = aws_subnet.pub1.id

  tags = {
    Name = "My_web"
  }
}

resource "aws_security_group" "MySg" {
  name        = "My security Group"
  description = "Allow Http and ssh inbound traffic"
  vpc_id      = aws_default_vpc.default_vpc.id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}