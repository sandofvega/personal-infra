module "remote_backend" {
  source = "./modules/remote-backend"

  bucket_name = var.tf_state_bucket_name
}
