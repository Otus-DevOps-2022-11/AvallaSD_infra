resource "yandex_compute_instance" "loadbalancer" {
  name = "reddit-app-lb"
  zone = var.app_zone
  resources {
    cores  = 2
    memory = 2
  }
  boot_disk {
    initialize_params {
      image_id = var.image_id
    }
  }
  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }
  metadata = {
    ssh-keys = "ubuntu:${file(var.public_key_path)}"
  }
  connection {
    type        = "ssh"
    host        = yandex_compute_instance.loadbalancer.network_interface.0.nat_ip_address
    user        = "ubuntu"
    agent       = false
    private_key = file(var.private_key_path)
  }
  provisioner "file" {
    source      = "files/nginxConfig"
    destination = "/tmp/nginxConfig"
  }
  provisioner "remote-exec" {
    script = "files/nginx_setup.sh"
  }
}
