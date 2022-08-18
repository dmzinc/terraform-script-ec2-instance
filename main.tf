provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "Docker" {
  ami                    = "ami-02d1e544b84bf7502"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-2a"
  key_name               = "DockerKey"
  vpc_security_group_ids = ["sg-08aa07c8a0e6e6d05"]

  tags = {
    Name    = "Docker-Instance"
    Project = "Docker"
  }

}