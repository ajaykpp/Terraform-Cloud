vi vars.tf 

variable "AWS_ACCESS_KEY"{
  type = string
}
variable "AWS_SECRET_KEY"{
  type = string
}

4. Add another file by clicking on add file dropdown and select create new file.
5. Name the file as instance.tf, Insert the below contents and commit the file.
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
    Name = "unus-HelloWorld"
  }
}
