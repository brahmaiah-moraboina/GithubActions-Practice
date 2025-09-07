variable "vpc_cidr" {
  description = "VPC CIDR RANGE"
  type = string
}

variable "subnet_cidr" {
    description = "Subnets Cidr Range"
    type = list(string)
}

variable "subnet_names" {
    description = "Subnet Names"
    type = list(string)
    default = ["Publicsubnet1", "Publicsubnet2"]
}
