#!/bin/sh

echo Iniciando instalaci�n... 
read -p "Nombre del administrador de la base de datos:" usuario
read -s -p "Contrase�a del usuario:" contrasena
mysql -u $usuario -p $contrasena < onlinejob.sql
echo Instalaci�n terminada.

mvn tomcat7:run