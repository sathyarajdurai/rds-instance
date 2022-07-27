
data "aws_subnet" "data-a" {  
  filter {
    name   = "tag:Name"
    values = ["data-a"]
  }
}

data "aws_subnet" "data-b" {  
  filter {
    name   = "tag:Name"
    values = ["data-b"]
  }
}

data "aws_vpc" "talent_academy" {  
  filter {
    name   = "tag:Name"
    values = ["lab-vpc"]
  }
}

data "aws_security_group" "ec2_allow" {
  filter {
    name = "tag:Name"
    values = ["ansible-server"]
  }
}