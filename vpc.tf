resource "aws_instance" "build" {
  ami = "ami-08d4ac5b634553e16"
  instance_type = "t2.micro"
}

resource "aws_instance" "stage" {
  ami = "ami-08d4ac5b634553e16"
  instance_type = "t2.micro"
}