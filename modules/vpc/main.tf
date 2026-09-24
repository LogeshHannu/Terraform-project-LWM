resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = var.instance_tenancy

  tags = {
    Name = "${var.environment_name}-vpc"
    Env = var.environment_name
  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_cidr_block

  tags = {
    Name = "${var.environment_name}-subnet"
  }
}