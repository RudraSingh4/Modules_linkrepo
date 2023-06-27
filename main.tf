resource "aws_instance" "sm_ec2" {
    ami = var.ami_id
    instance_type = var.inst_type
    tags = var.tag_name

    volume_tags = {
        Name = "rudra"
        Owner : "rudra.singh@cloudeq.com"
        Purpose : "training"
        availability_zone = "us-east-1"
        size              = 10
    }

}