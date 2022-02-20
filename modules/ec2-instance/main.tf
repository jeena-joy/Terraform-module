resource "aws_instance" "ec2-instance" {
  ami = var.ami_id
  instance_type = var.instance_type
  key_name = var.key
  associate_public_ip_address = true
  vpc_security_group_ids = ["sg-000f7f7ea245076f8"]
  tags = {

    Name = var.environment
  }

}
