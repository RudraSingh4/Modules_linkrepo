resource "aws_instance" "sm_ec2" {
  ami           = var.ami_id
  instance_type = var.inst_type
  tags = {
    Name = var.tag_name
    Owner : "rudra.singh@cloudeq.com"
    Purpose : "training"
  }

  volume_tags = {
    Name = "rudra"
    Owner : "rudra.singh@cloudeq.com"
    Purpose : "training"
    # availability_zone = "us-east-1"
    # size              = 10
  }

}
