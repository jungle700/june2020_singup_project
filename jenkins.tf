provider "aws" {

  region = "eu-west-1"

}

data "template_file" "myuserdata1" {

  template = file("${path.cwd}/jenks.tpl")

}



resource "aws_instance" "jenks" {

  instance_type = "t2.micro"

  ami = "ami-0c3e74fa87d2a4227"

  key_name = "tkay"

  user_data = data.template_file.myuserdata1.template

  
  tags = {

    Name = "Docker Server"

  }

}