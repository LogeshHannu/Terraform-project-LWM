variable "ami_id" {
    description = "The AMI ID to use for the EC2 instance"
  type        = string          
}

variable "instance_type" {
    description = "The instance type to use for the EC2 instance"
    type        = string
}

variable "subnet_id" {
    description = "The subnet ID to launch the EC2 instance in"
    type        = string
}

variable "instance_count" {
    description = "The number of EC2 instances to launch"
    type        = number
}

variable "environment" {
    description = "The environment to assign to the EC2 instance"
    type        = string
}