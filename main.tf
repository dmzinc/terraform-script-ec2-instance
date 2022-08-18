resource "aws_instance" "Docker" {
  ami                    = var.Ami
  instance_type          = "t2.micro"
  availability_zone      = var.Zone1
  key_name               = "Your Key Pair Name"
  vpc_security_group_ids = ["Your Security Group ID"]
  tags = {
    Name    = "Name of the Instance"
  }

}