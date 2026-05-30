resource "aws_instance" "example" {
  count = 5
  ami           = "ami-0004d31a93c360757"
  instance_type = "m5a.xlarge"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name = "roboshop"
    Project = "roboshop"
  }
}

resource "aws_security_group" "allow_tls" {
  name        = "allow-all-roboshop" # this is for AWS account
  description = "Allow TLS inbound traffic and all outbound traffic"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow-all-terraform"
  }
}
