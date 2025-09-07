variable "sg_id" {
   description = "sg for alb"
   type = string
}
variable "subnets" {
    description = "subnet id for alb"
    type = list(string)
}
variable "vpc_id" {
   description = "vpc for alb"
   type = string
}
variable "instances" {
    description = "Instance id for TGA"
    type = list(string)
}