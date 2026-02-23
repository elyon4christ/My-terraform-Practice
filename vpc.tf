resource "google_compute_network" "private-network" {
    name = "private-network1"
    auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "new_subnetwork" {
    name = "subnetnet1"
    ip_cidr_range = "10.0.0.0/24"
    region = "us-central1"
    network = "google_compute_network.private-network.id"
  
}

 