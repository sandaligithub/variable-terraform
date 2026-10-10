provider "aws" {
    region = var.region
    }
resource "aws_instance" "ec2" {
    ami = var.aws_ami
    instance_type = var.inst_type
    key_name = var.key_name
    vpc_security_group_ids = [var.mysg]

    tags = {
        Name = var.projectname
        }
}