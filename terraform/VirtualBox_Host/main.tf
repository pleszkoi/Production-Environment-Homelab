terraform {
  required_providers {
    vagrant = {
      source  = "bmatcuk/vagrant"
      version = "~> 4.0"
    }
  }
}

provider "vagrant" {}

resource "vagrant_vm" "debian_vm" {
  vagrantfile_dir = "."  # A Vagrantfile mappája

  # Optionális: ha portforwardokat szeretnél lekérni
  get_ports = true
}