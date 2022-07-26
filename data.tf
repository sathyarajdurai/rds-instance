data "aws_vpc" "talent_academy" {  
  filter {
    name   = "tag:Name"
    values = ["lab-vpc"]
  }
}

data "aws_subnet" "data" {  
  filter {
    name   = "tag:Name"
    values = ["data"]
  }
}

data "aws_db_subnet_group" "subnet_group" {
  name = "tag:My DB subnet group"
  subnet_ids = [aws_subnet.data.id]
}