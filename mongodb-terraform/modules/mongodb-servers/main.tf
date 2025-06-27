resource "aws_instance" "mongodb" {
  count                  = 2
  ami                    = "ami-0ec1bf4a8f92e7bd1"  # ubuntu
  instance_type          = "t2.micro"
  subnet_id              = var.private_subnet_ids[count.index]
  vpc_security_group_ids = [var.mongodb_sg_id]
  key_name               = var.key_name

  tags = {
    Name = "mongodb-server-${count.index + 1}"
  }
}
