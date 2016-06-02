#!/bin/sh

echo Iniciando instalación... 
read -p "Nombre del administrador de la base de datos:" usuario
read -s -p "Contraseña del usuario:" contrasena
mysql -u $usuario -p $contrasena < onlinejob.sql
echo Instalación terminada.

mvn tomcat7:run