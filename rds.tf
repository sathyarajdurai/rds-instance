resource "aws_db_instance" "sathya_rds" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0.28"
  instance_class       = "db.t3.micro"
  db_name              = "rds-instance"
  username             = "lab-user"
  password             = "labuseradmin"
  parameter_group_name = "default.mysql5.7"
  vpc_security_group_ids = [aws_security_group.rds_security.id]
  db_subnet_group_name = data.aws_db_subnet_group.subnet_group.id
}