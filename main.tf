resource "aws_instance" "example_server" {
  ami           = "ami-0ee4f2271a4df2d7d"
  instance_type = "t2.micro"
  name = "${var.env_name}"
}
