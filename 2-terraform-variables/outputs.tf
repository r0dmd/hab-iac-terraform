output "files_created" {
  description = "Archivos creados por Terraform"
  value = {
    config_file = local_file.config.filename
    backup_file = var.create_backup ? local_file.backup[0].filename : "No se creó backup"
  }
}