# Terraform: Módulo

## Descripción:
Este repositorio contiene un módulo hecho con Terraform que permite crear una página web básica que se alojará en AWS S3, ya que es provisionado automáticamente.

## Pasos a Seguir:
1. Descargar el proyecto.
2. Configurar las credenciales de AWS en tu sistema. [(Cómo Configurar las Credenciales de AWS)](https://docs.aws.amazon.com/cli/v1/userguide/cli-chap-configure.html)
3. Instalar Terraform. [(Cómo Instalar Terraform)](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
4. Ejecutar los siguientes comandos de Terraform sobre la carpeta del proyecto:
   * terraform init
   * terraform plan -var="bucket_new_name=BucketEjemploNombreUnico" -var="region=us-east-1"
   * terraform apply -var="bucket_new_name=BucketEjemploNombreUnico" -var="region=us-east-1" -auto-approve


* En caso de querer mostrar el output del endpoint del sitio web en la consola, es necesario correr los siguientes comandos después del primer apply.
  - terraform get
  - terraform apply -var="bucket_new_name=BucketEjemploNombreUnico" -var="region=us-east-1" -auto-approve


* En caso de querer deshacer los cambios en la nube, ejecutar:
  - terraform destroy

## Características del Módulo

- Validación para que la región siempre sea us-east-1
- El usuario puede establecer las variables de la región y del nombre del Bucket.
- Fácil de usar ya que todo está en un módulo.
