resource "google_compute_instance" "vitual_machine" {
  name = "vitual_machine1"
  machine_type = "e2-micro"
  zone = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    subnetwork = "subnet1"

    access_config {
      
    }
  }
}

resource "google_compute_instance" "vitual-ubuntn" {
    name = "vitual_machine2"
    machine_type = "e2-micro"
    zone = "us-east1-b"

    boot_disk {
      initialize_params {
        image =  "ubuntu-os-cloud/ubuntu-2204-lts"
      }
    }

    network_interface {
      subnetwork = "subnet2"

      access_config {
        
      }
    }
  
}