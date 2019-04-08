provider "aws" {
  access_key = "${var.aws_access_key_id}"
  secret_key = "${var.aws_secret_access_key}"
  region     = "us-east-2"
}
resource "aws_instance" "web" {

  ami = "ami-0c55b159cbfafe1f0"

  instance_type = "t2.micro"

  tags {

    Name = "HelloWorld"

  }

}

