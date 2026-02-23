resource "google_storage_bucket" "my_bucket1" {
  name = "new-bucket"
  location = "US"
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "my_bucket2" {
  name = "new-bucket2"
  location = "EU"
  storage_class = "STANDARD"
  uniform_bucket_level_access = "true"
}