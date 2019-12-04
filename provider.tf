# variable "path" {
#     default = "/Users/CloudFlare/Downloads"
#  }

provider "google" {
	project = "globalse-198312"
	region = "us-west1"
	zone = "us-west1-c"
	#credentials = file("${var.path}/globalse-198312-587b99fa7f57.json")
}