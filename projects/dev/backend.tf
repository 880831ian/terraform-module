terraform {
  backend "gcs" {
    bucket      = "test-dev-tfstate"
    prefix      = "/dev"
  }
}