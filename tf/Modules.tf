module "Azure" {
  source            = "./Azure"
  project           = var.project
  environment       = var.environment
  sp_object_id      = var.sp_object_id
  moein_obj_id      = var.moein_obj_id
  ARM_CLIENT_ID     = var.ARM_CLIENT_ID
  ARM_CLIENT_SECRET = var.ARM_CLIENT_SECRET
}