module "vm_from_module" {
  source = "./vm_module"
  name = var.name
  environment = "prod"
  image = "ubuntu-os-cloud/ubuntu-1604-lts"
  machine_type = "f1-micro"
  
}

variable "name" {
  default = "humpty-dumpty"
}