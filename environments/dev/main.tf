module "vpc" {
  source = "../../modules/vpc"
  vpc_cidr_block = "10.0.0.0/16"
  subnet_cidr_block = "10.0.1.0/24"
  environment_name = "dev"
}

module "ec2" {
  source = "../../modules/ec2"
  ami_id = "ami-0b6d9d3d33ba97d99"
  instance_type = "t3.micro"
  subnet_id = module.vpc.subnet_id
  environment = "dev"
  instance_count = 1
}