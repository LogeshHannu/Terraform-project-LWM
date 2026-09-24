variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "instance_tenancy" {
  description = "The tenancy of the instances in the VPC"
  type        = string
  default     = "default"
}

variable "environment_name" {
  description = "The name of the environment"
  type        = string
}

variable "subnet_cidr_block" {
  description = "The CIDR block for the subnet"
  type        = string
}

