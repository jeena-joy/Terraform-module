module "prod-ec2-instance" {
  source = "/root/module-ex/modules/ec2-instance"
  environment = "prod"
}

