# 🛍 STORE-MIGRATION-APP README

Aplicación para realizar la migración de información de las ventas de una tienda

Elementos necesarios:


* Ruby version: 2.6.6 
    - se añadio archivo .ruby-version para configuración por defecto de la versión en el proyecto.

* Ejecutar:  
    `bundle install`

* Realizar configuración del database yml (Se elimino el versionamiento orignal de archivo por seguridad)
    - Se añade ejemplo database.yml~

* Ejucución de los siguientes comandos para la base de datos: 

     `rake db:create`

     `rake db:migrate`

* Si todos los pasos se realizaron correcamente solo nos queda ejecutar el siguiente comando: 

    `Rails s`
  
* Ejecute el siguiente comando para la ejecución de Pruebas:
    `rspec spec`
    
NOTA: Si la aplicación marca error de webpacker ejecutar el siguiente comando: `bundle exec rails webpacker:install`

Ahora a disfrutar nuestra aplicación 😊 