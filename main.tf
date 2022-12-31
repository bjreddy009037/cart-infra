module "vpc" {
  source         = "github.com/bjreddy009037/tf-module-vpc"
  VPC_CIDR_BLOCK = var.VPC_CIDR_BLOCK
  COMPONENT      = var.COMPONENT
  ENV            = var.ENV
  AZ             = var.AZ
  SUBNET_CIDR    = var.SUBNET_CIDR
}


module "elasticache" {
  depends_on     = [module.vpc]
  source         = "github.com/bjreddy009037/tf-module-elasticache-redis"
  ENGINE         = var.EC_ENGINE
  ENGINE_VERSION = var.EC_ENGINE_VERSION
  NODE_TYPE      = var.EC_NODE_TYPE
  ENV            = var.ENV
  COMPONENT      = var.COMPONENT
  NODE_COUNT     = var.EC_NODE_COUNT
  FAMILY         = var.EC_FAMILY
  VPC_ID         = module.vpc.VPC_ID
  VPC_CIDR       = module.vpc.VPC_CIDR
  SUBNET_IDS     = module.vpc.SUBNET_IDS


}