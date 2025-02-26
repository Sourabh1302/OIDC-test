provider "aws" {
  region = var.aws_region

  assume_role {
    role_arn     = "arn:aws:iam::${var.aws_account_id}:role/githubOIDC"
    session_name = "GitHubActionsSession"
  }
}

