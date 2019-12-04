variable "path" {
    default = "/Users/CloudFlare/Downloads"
 }

provider "google" {
	project = "globalse-198312"
	region = "us-west1"
	zone = "us-west1-c"
	credentials = var.gcp_key
}