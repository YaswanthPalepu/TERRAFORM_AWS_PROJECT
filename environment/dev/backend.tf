terraform {
  backend "s3" {
    bucket = "my-terraform-backend-bucket-001"
    key    = "personal/terraform.tfstate"
    region = "us-east-1"
  }
}
