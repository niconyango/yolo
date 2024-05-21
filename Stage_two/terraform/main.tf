provider "virtualbox" {
  # Configure the VirtualBox provider
}

resource "vagrant" "server" {
  # Configuration for the Vagrant server
  name   = "vagrant"
  box    = "ubuntu/jammy64"
  memory = 1024
  cpus   = 2
  provisioner "shell" {
    inline = ["ansible-playbook /vagrant/ansible/stagetwo_playbook.yml"]
  }
}

output "server_ip" {
  value = vagrant.server.private_ip
}
variable "vm_memory" {
  description = "The amount of memory for the VM"
  default     = 1024
}

variable "vm_cpus" {
  description = "The number of CPUs for the VM"
  default     = 2
}
