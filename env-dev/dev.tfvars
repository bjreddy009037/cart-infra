VPC_CIDR_BLOCK = "10.10.0.0/24"
ENV            = "dev"
SUBNET_CIDR    = ["10.10.0.0/25", "10.10.0.128/25"]

EC_ENGINE         = "redis"
EC_ENGINE_VERSION = "6.2"
EC_NODE_TYPE      = "cache.t3.micro"
EC_NODE_COUNT     = 1
EC_FAMILY         = "redis6.x"

EC2_NODE_TYPE           = "t3.micro"
PORT                    = 8080
ONDEMAND_INSTANCE_COUNT = 1
SPOT_INSTANCE_COUNT     = 1
