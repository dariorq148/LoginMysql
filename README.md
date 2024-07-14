# login
estoy trabajando con esta base de datos en mysql 
create database UniversidadPrueba

use UniversidadPrueba

CREATE TABLE usuarios (
    idUsuarios INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(50),
    password VARCHAR(50)
);
INSERT INTO usuarios (email, password,nombre,apellidos, direccion, telefono) VALUES ('dirac@gmail.com', 'dirac', 'dirac','Ramos','jr arequipa',34343);

alter table usuarios  add column(nombre varchar(50))
alter table usuarios  add column(apellidos varchar(50))
alter table usuarios  add column(direccion varchar(50))
alter table usuarios  add column(telefono int(10))


select *from usuarios
