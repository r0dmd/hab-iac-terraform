terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

# Archivo principal del proyecto
resource "local_file" "config" {
  filename = "${var.project_name}-${var.environment}.conf"
  content = templatefile("${path.module}/config.tpl", {
    project_name = var.project_name
    environment  = var.environment
    timestamp    = timestamp()
  })
}

# Archivo de backup condicional
resource "local_file" "backup" {
  count = var.create_backup ? 1 : 0

  filename = "${var.project_name}-${var.environment}-backup.conf"
  content  = "Backup creado el ${timestamp()}"
}