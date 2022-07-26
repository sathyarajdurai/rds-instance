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