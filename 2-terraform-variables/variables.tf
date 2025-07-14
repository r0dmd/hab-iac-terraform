variable "project_name" {
  description = "Nombre del proyecto"
  type        = string
  # Sin default - será obligatorio
}

variable "environment" {
  description = "Entorno de despliegue"
  type        = string
  default     = "dev"
}

variable "create_backup" {
  description = "¿Crear archivo de backup?"
  type        = bool
  default     = true
}