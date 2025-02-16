module "bastion" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  ami = data.aws_ami.joindevops.id
  name                   = "local.resourse_name"
  instance_type          = "t3.micro"
  monitoring             = true
  vpc_security_group_ids = [local.bastion_sg_id]
  subnet_id              = local.private_subnet_id

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}