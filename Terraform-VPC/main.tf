module "vpc" {
  source       = "./modules/vpc"
  vpc_cidr     = var.vpc_cidr
  subnet_cidr  = var.subnet_cidr
  subnet_names = var.subnet_names
}

module "sg_tf" {
  source = "./modules/sg"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source        = "./modules/ec2"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  sg_id         = module.sg_tf.sg_id
  subnets       = module.vpc.subnet_ids
}

module "alb" {
  source    = "./modules/alb"
  sg_id     = module.sg_tf.sg_id
  subnets   = module.vpc.subnet_ids
  vpc_id    = module.vpc.vpc_id
  instances = module.ec2.instances
}