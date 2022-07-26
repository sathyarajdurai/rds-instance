resource "aws_security_group" "rds_security" {
  name        = "rds-security"
  description = "Allow rds instance inbound traffic"
  vpc_id      = data.aws_vpc.talent_academy.id

  ingress {
    description      = "Allow port 3306"
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    cidr_blocks      = ["192.168.1.0/24"]
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