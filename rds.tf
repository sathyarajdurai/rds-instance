resource "aws_db_instance" "sathya_rds" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  name                 = "rds-inst"
  username             = "lab-user"
  password             = "labuseradmin"
  parameter_group_name = "default.mysql5.7"
  vpc_security_group_ids = [aws_security_group.sathya_rds.id]
  db_subnet_group_name = data.aws_subnet.data.id
}