terraform {
  required_version = ">= 0.12.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "foo" {
  acl    = "public-read-write"
  bucket = "systest-tf-log-bucket-bb44"
  versioning {
    enabled = false
  }
  tags = merge({
    Demo = "public-read-write"
    }, {
    yor_trace            = "8cc616c5-33fc-4891-934f-f7ac3fa248af"
    git_commit           = "dd9fb87aa4652d07b39fdb21cde1ace618cbb76e"
    git_file             = "s3.tf"
    git_last_modified_at = "2023-05-13 00:51:51"
    git_last_modified_by = "belle.bao@gmail.com"
    git_modifiers        = "belle.bao"
    git_org              = "bellebao"
    git_repo             = "test"
  })
}
