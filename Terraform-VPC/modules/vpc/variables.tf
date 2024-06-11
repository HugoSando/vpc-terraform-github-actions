variable "vpc_cidr" {
  description = "CIDR range"
  type = string
}

variable "subnet_cidr" {
  description = "Subnets CIDRS range"
  type = list(string)
}

variable "subnet_names" {
  description = "Subnet names"
  type = list(string)
}