provider "aws" {
  region = "ap-south-1"
}

module "ec2_instance" {
  source = "./modules/ec2"

  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  name          = "my-module-ec2"
}

module "s3_bucket" {
  source = "./modules/s3"

  bucket_name = "divya-demo-bucket-12345"
  name        = "my-s3-bucket"
  environment = "dev"
}