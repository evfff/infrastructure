resource "yandex_compute_instance" "vm-1" {
    name = "frantszovterraform-2"
    platform_id = "standard-v1"    
    zone = var.zone    

    resources {
        cores  = 2
        memory = 2
    }

    boot_disk {
        initialize_params {
            image_id = "fd80qm01ah03dkqb14lc"
            size = "44"
        }
    }
  
  #  schedule_policy {
  #  expression = "0 0 * * *"
  # }

    network_interface {
       # subnet_id = "e9begc9roogev5gqv4ou"
        subnet_id = var.subnet_id
        nat = false
        }

    metadata = {
        #ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
        user-data = "${file("/home/student/terraformtest/meta.yml")}"
        }

}


