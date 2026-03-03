terraform{
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.27"
        }
    }

     required_version = ">=0.14.9"
}

provider "aws" {
    profile = "default"
    region = "us-west-2"
}

resource "aws_instance" "app_server" {
    ami = "ami-0786adace1541ca80"
    instance_type = "t3.micro"
    key_name = "par-de-chaves"

    tags = {
        Name = "testeDeployViaTerraform"
    }
}