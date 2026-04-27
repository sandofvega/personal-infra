module "remote_backend" {
  source = "./modules/remote-backend"

  bucket_name = "terraform-state-sandofvega"
}
