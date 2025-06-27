resource "aws_instance" "bastion" {
  ami                    = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 AMI (region-specific)
  instance_type          = "t2.micro"
  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = [var.bastion_sg_id]
  key_name               = var.key_name

  tags = {
    Name = "bastion-host"
  }
}
