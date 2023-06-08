terraform {
  backend "gcs" {
    bucket      = "test-prod-tfstate"
    prefix      = "/prod"
  }
}