resource "google_compute_instance" "default" {
  #count = var.machine_count
  name = var.name
  machine_type = var.machine_type
  can_ip_forward = "false"
  description = "This is a virtual machine"
  tags = ["http-allow", "https-allow"]

  boot_disk {
    initialize_params {
      image = var.image
      size = "15"
    }
  }

  labels = {
    name = var.name
    machine_type = var.environment 
  }

  metadata = {
    size = "15"
    foo = "bar"
  }

  metadata_startup_script = "echo hi"


  network_interface {
    network = "default"
  }

}

resource "google_compute_disk" "default" {
  name = "test-disk"
  type = "pd-ssd"
  size = "10"
}

resource "google_compute_attached_disk" "default" {
  disk = google_compute_disk.default.id
  instance = google_compute_instance.default.self_link
  
}