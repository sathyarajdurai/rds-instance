# resource "aws_vpc" "rds_vpc" {
#   cidr_block = "10.10.0.0/16"
#   instance_tenancy = "default"

#   tags = {
#     Name = "rds-vpc"
#   }
# }

resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = "subnet-rds"
  subnet_ids = [data.aws_subnet.private.id, data.aws_subnet.data.id]

  tags = {
    Name = "rds group"
  }
}


resource "aws_db_instance" "sathya_rds" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0.28"
  instance_class       = "db.t3.micro"
  db_name              = "rdsinstance"
  username             = "labuser"
  password             = "labuseradmin"
  vpc_security_group_ids = [aws_security_group.rds_security.id]
  db_subnet_group_name = aws_db_subnet_group.rds_subnet_group.id
  skip_final_snapshot  = true
}