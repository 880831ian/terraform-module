terraform {
  backend "gcs" {
    bucket      = "test-qa-tfstate"
    prefix      = "/qa"
  }
}