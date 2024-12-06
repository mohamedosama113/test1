output "ebs_csi_status" {
  value = module.ebs_csi_driver.addons["ebs_csi"].status
}
