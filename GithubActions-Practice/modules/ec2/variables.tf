variable "sg_id" {
    description = "SG Id for EC2 Instance"
    type = string
} 

variable "subnets" {
    description = "Subnets ids for EC2"
    type = list(string)
}

variable "ec2_names" {
    description = "EC2 Names"
    type = list(string)
    default = ["WebServer1", "WebServer2"]
}