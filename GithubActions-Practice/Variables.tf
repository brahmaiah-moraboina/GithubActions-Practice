variable "vpc_cidr" {
  description = "VPC CIDR RANGE"
  type = string
}

variable "subnet_cidr" {
    description = "Subnets Cidr Range"
    type = list(string)
}