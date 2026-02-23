resource "google_compute_network" "private-network" {
    name = "private-network1"
    auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "new_subnetwork" {
    name = "subnet1"
    ip_cidr_range = "10.0.0.0/24"
    region = "us-central1"
    network = "google_compute_network.private-network.id"
  
}

 resource "google_compute_subnetwork" "new_subnetwork1" {
    name = "subnet2"
    ip_cidr_range = "10.1.0.0/24"
    region = "us-east1-b"
    network = "google_compute_network.private-network.id"
   
 }