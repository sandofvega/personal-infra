module "remote_backend" {
  source = "./modules/remote-state"

  bucket_name = var.tf_state_bucket_name
}
