data "aws_subnet" "private" {  
  filter {
    name   = "tag:Name"
    values = ["private"]
  }
}

data "aws_subnet" "data" {  
  filter {
    name   = "tag:Name"
    values = ["data"]
  }
}

data "aws_vpc" "talent_academy" {  
  filter {
    name   = "tag:Name"
    values = ["lab-vpc"]
  }
}