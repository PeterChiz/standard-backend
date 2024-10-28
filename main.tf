resource "aws_instance" "vm-user1" {
  ami = "ami-04b6019d38ea93034"
  instance_type = "t2.micro"
  tags = {
    Name ="vm-user1"
  }
}

resource "aws_ebs_volume" "ebs_extend" {
  availability_zone = "ap-southeast-1a"
  size = 10
}

resource "aws_volume_attachment" "ebs_attach" {
  device_name = "/dev/sdh"
  volume_id = aws_ebs_volume.ebs_extend.id
  instance_id = aws_instance.vm-user1.id
}