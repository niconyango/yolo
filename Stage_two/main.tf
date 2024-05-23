terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.1.0" # Use the latest version available
    }
  }
}

provider "null" {}

resource "null_resource" "vagrant_up" {
  provisioner "local-exec" {
    command = <<EOT
      vagrant init ubuntu/jammy64
      vagrant up
    EOT
  }
  triggers = {
    always_run = "${timestamp()}"
  }
}
resource "null_resource" "run_ansible_playbook" {
  provisioner "remote-exec" {
    inline = [
      "ansible-playbook  /home/ubuntu/Moringa/projects/yolo/Stage_two/playbook.yaml"
    ]
    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("~/.ssh/id_rsa")
      host        = "127.0.0.1"
    }
  }
  triggers = {
    always_run = "${timestamp()}"
  }
}
resource "null_resource" "vagrant_destroy" {
  provisioner "local-exec" {
    command = "vagrant destroy -f"
  }

  triggers = {
    always_run = "${timestamp()}"
  }
}
