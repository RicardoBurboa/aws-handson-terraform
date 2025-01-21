# Terraform: Módulo

## Descripción:
Este repositorio contiene un módulo hecho con Terraform que permite crear una página web básica que se alojará en AWS S3, ya que es provisionado automáticamente.

## Pasos a Seguir:
1. Descargar el proyecto.
2. Configurar las credenciales de AWS en tu sistema.
3. Instalar Terraform [(Cómo Instalar Terraform)](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
4. Ejecutar los siguientes comandos de Terraform sobre la carpeta del proyecto:
   * terraform init
   * terraform plan -var="bucket_new_name=BucketEjemploNombreUnico" -var="region=us-east-1"
   * terraform apply -var="bucket_new_name=BucketEjemploNombreUnico" -var="region=us-east-1" -auto-approve

En caso de querer mostrar el output del endpoint del sitio web en la consola, es necesario correr los siguientes comandos después del primer apply.
- terraform get
- terraform apply -var="bucket_new_name=123testplswork123" -var="region=us-east-1" -auto-approve

En caso de querer deshacer los cambios en la nube, ejecutar:
- terraform destroy
