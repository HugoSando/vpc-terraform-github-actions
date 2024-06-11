variable "sg_id" {
  description = "Security Group ID for application load balancer"
  type = string
}

variable "subnets" {
  description = "subnets for alb"
  type = list(string)
}

variable "vpc_id" {
  description = "VPC ID for target group"
  type = string
}

variable "instances" {
  description = "instances for target group attachments"
  type = list(string)
}