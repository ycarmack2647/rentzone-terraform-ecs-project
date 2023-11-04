# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "ycarmack1102-terraform-remote-state"
    key            = "rentzone-ecs/terraform.tfstate"
    region         = "us-east-1"
    profile        = "terraform-user"
    dynamodb_table = "terraform-state-lock"
  }
}
