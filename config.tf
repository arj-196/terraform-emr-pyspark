terraform {
  backend "s3" {
    encrypt = true
    bucket  = "yzr-terraform"
    key     = "playground-spark.state"
    region  = "eu-west-3"
  }
}

provider "aws" {
  # version    = "~> 1.0"
  region     = "${var.region}"
  profile    = "yzr"
}
