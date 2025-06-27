resource "aws_instance" "bastion" {
  ami                    = "ami-0ec1bf4a8f92e7bd1"  # ubuntu
  instance_type          = "t2.micro"
  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = [var.bastion_sg_id]
  key_name               = var.key_name

  tags = {
     Name = "Bastion-host"
    Role = "Bastion-server"
  }
}
