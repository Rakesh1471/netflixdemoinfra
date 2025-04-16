provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-080b1a55a0ad28c02"
instance_type = "t2.medium"
key_name = "rk"
vpc_security_group_ids = ["sg-03cda2e18fc1b5067"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "tomcat-1", "tomcat-2", "Monitoring server"]
}
