terraform {
  backend "s3" {
    bucket  = "terraform-state-250225"
    key     = "OIDC/terraform.tfstate"
    region  = "ap-south-1"
    encrypt = true
  }
}
