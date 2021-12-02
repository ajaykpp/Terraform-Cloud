vi instance.tf

provider "aws" {
  region = "us-east-1"
  access_key=var.AWS_ACCESS_KEY
  secret_key=var.AWS_SECRET_KEY 
}
resource "aws_instance" "web" {
  ami           = "ami-04902260ca3d33422"
  instance_type = "t3.micro"

  tags = {
    Name = "Ajay-HelloWorld"
  }
}
