provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "us-east-2"
}
resource "aws_instance" "web" {

  ami = "ami-0c55b159cbfafe1f0"

  instance_type = "t2.micro"

  tags {

    Name = "HelloWorld"

  }

}

