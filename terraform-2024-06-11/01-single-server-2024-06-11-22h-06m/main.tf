provider "aws" {
  region = "sa-east-1"
}

#resource "<PROVIDER>_<TYPE>" "<NAME>"
#  [CONFIG]

resource "aws_instance" "web-test-1" {
  ami           = "ami-0632bbd74ce561b38"
  instance_type = "t2.micro"

  tags = {
    Name = "first-test-web-server"
  }
}
