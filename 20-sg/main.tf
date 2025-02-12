module "" {
  source = "../../terraform-aws-security-group"
  project_name          = var.project_name
  environment           = var.enronment_name
  vpc_id                = local.vpc_id
  sg_name               = "mysql"
  common_tags           = var.common_tags
  sg_tags               = var.mysql_sg_tags

  ingress_cidr_blocks = ["10.10.0.0/16"]
}