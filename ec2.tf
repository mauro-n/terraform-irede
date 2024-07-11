resource "aws_instance" "terraform-webserver" {
  # ami is the ec2 type of computer id, its on aws console
  ami             = "ami-080e1f13689e07408"
  # important to specify
  instance_type   = "t2.micro"
  # this is key pairs created on console
  key_name        = "mauro-ec2-default-key"
  # this should be created on other tf files
  security_groups = ["allow_ssh", "allow_http", "allow_egress"]  

  tags = {
    Name = "terraform-webserver"
  }
}
