module "vpc" {
  source = "github.com/bjreddy009037/tf-module-vpc"
  VPC_CIDR_BLOCK = var.VPC_CIDR_BLOCK
  COMPONENT = var.COMPONENT
  ENV = var.ENV
  AZ = var.AZ
  SUBNET_CIDR = var.SUBNET_CIDR
}