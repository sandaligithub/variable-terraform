provider "aws" {
    region = var.region
    }
resource "aws_instance" "my-ec2" {
    ami = var.aws_ami
    key_name = var.sg-0fb7a8231f685331c
    instance_type = var.inst_type
    vpc_security_group_ids = var.mysg
      tags {
          Name = var.instance-name
      }
  }