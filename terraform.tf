# Add backend to store state on consul 
terraform {
  backend "consul" {
    address      = "127.0.0.1:8500"
    scheme       = "http"
    path         = "direction/terraform/state"
    lock         = true
    access_token = "a79e9314-0784-8fe2-6912-3306a9de0aab"
  }
}