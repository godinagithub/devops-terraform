resource "google_compute_instance" "vm_instance" {
  name         = "train-jenkins"
  machine_type = "e2-standard-2"

  tags = ["jenkins"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-minimal-2004-lts"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.name
    subnetwork = google_compute_subnetwork.subnet.name

    access_config {
       nat_ip = google_compute_address.jenkins_static_ip.address
    }
  }

  metadata = {
    ssh-keys = "${var.gce_ssh_user}:${file(var.gce_ssh_pub_key_file)}"
  }
}
