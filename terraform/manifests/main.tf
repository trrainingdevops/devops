
resource "aws_instance" "devops" {
  ami                     = var.ec2_ami
  instance_type           = var.instance
  key_name = var.key
  vpc_security_group_ids = [var.sg]

  tags = {
    Name = var.name
  }
}
