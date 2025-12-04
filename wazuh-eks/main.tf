module "vpc" {
  source = "./modules/vpc"
}

module "eks" {
  source               = "./modules/eks"
  cluster_name         = "wazuh-eks"
  cluster_version      = "1.31"
  private_subnets      = module.vpc.private_subnets
  public_subnets       = module.vpc.public_subnets
  vpc_id               = module.vpc.vpc_id
}
