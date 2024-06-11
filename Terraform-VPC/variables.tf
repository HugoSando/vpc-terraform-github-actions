variable "vpc_cidr" {
  description = "CIDR range"
  type        = string
}

variable "subnet_cidr" {
  description = "Subnets CIDRS range"
  type        = list(string)
}

variable "subnet_names" {
  description = "Subnet names"
  type        = list(string)
}

variable "ami_id" {
  description = "Amazon AMI id"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  type        = string
}