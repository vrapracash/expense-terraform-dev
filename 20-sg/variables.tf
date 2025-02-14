variable "project_name"{
    default = "expense"
}

variable "environment" {
    default = "dev"
}

variable "common_tags" {
    default = {
        Project = "expense"
        Terraform = true
        Environment = "dev"
    }
}

variable "mysql_sg_tags" {
    default = "mysql"
}

variable "backend_sg_tags" {
    default = "backend"
}

variable "frontend_sg_tags" {
    default = "frontend"
}

variable "bastion_sg_tags" {
    default = "bastion"
}

variable "ansible_sg_tags" {
    default = "ansible"
}