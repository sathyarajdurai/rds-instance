resource "aws_security_group" "sathya_rds" {
  name        = "rds-instance"
  description = "Allow rds instance inbound traffic"
  vpc_id      = data.aws_vpc.talent_academy.id

  ingress {
    description      = "Allow port 1433"
    from_port        = 1433
    to_port          = 1433
    protocol         = "tcp"
    cidr_blocks      = ["192.168.0.107/32"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "database-server"
  }
}