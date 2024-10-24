provider "aws"{
region="ap-south-1"
}

resource "aws_instance" "one"{
count=4
ami="ami-0e0e417dfa2028266"
instance_type="t2.medium"
key_name = "dev4pm"
vpc_security_group_ids = ["sg-049e104c5f8955ef5"]
tags={
Name=var.instance_names[count.index]
}
}
variable "instance_names" {
default = ["jenkins", "nexus", "tomcat", "monitor"]
}
