terraform{
  required_providers{
    google = {
        source = "hashicorp/google"
        version = "~> 4.0"
    }
  }  
}

provider "google"{
    project = "glory-project-484316"
    region = "us-central1"
}