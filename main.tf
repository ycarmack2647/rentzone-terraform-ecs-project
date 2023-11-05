# configures the aws provider and the terraform backend
provider "aws" {
  region = "us-east-1"
  profile = "terraform-user"
}

# stores the terraform state file in an s3 bucket
terraform {
  backend "s3" {
    bucket = "ycarmack1102-terraform-remote-state"
    key    = "terraform.tfstate.dev"
    region = "us-east-1"
    profile = "terraform-user"
  }
}