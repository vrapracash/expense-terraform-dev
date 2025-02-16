locals {
  resource_name     = "${var.project_name}-${var.environment}-bastion"
  bastion_sg_id     = data.aws_ssm_parameter.bastion_sg_id.value
  public_subnet_ids = slice(",", data.aws_ssm_parameter.bastion_sg_id.value)[0]
}