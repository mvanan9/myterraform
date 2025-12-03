terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws"{
region="us-east-1"
}
resource "aws_instance" "myfirstec2" {
  ami           = 	"ami-0c9ec63dfdeb08987"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
