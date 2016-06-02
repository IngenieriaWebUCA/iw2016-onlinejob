#! /bin/bash

echo "Introduzca usuario MySQL:"
read user

echo -n "[MySQL] Introduzca la contrase�a de $user de MySQL: "
read CLAVE

echo -n "Creando base de datos..."
if mysql -u root --password="$CLAVE" < onlinejob.sql; then
  echo "*** Base de datos creada ***"
else
  echo "Se ha producido un error al crear la base de datos"
fi

echo "Realizando el despliegue de la aplicaci�n"

mvn clean compile tomcat7:run