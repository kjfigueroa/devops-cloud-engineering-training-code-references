provider "aws" {
  region = "sa-east-1"
}

resource "aws_instance" "web-test-2" {
  ami           = "ami-0632bbd74ce561b38"
  instance_type = "t2.micro"

  vpc_security_group_ids = [aws_security_group.instance.id]

  # Using heredoc syntax for insert user_data
  user_data = <<-EOF
              #!/bin/bash
              echo "deploying a simple web-server" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF
    
    user_data_replace_on_change = true
    
    tags = {
      Name = "terraform-simple-web-server"
    }

}

resource "aws_security_group" "instance" {
  name = "terraform-simple-web-server-instance" 

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
  }
}
