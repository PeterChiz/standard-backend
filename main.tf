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