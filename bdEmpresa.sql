CREATE DATABASE empresa;

use empresa;

CREATE TABLE departamento(
id_departamento int primary key not null,
nombre varchar (45) not null
);

CREATE TABLE empleados ( 
id_empleado int primary key not null,
nombre varchar (45) not null,
id_departamento int not null,
foreign key (id_departamento) references departamento(id_departamento) on delete cascade on update cascade
);

INSERT INTO `departamento`(`id_departamento`, `nombre`) VALUES ('1','1');
INSERT INTO `departamento`(`id_departamento`, `nombre`) VALUES ('2','2');
INSERT INTO `departamento`(`id_departamento`, `nombre`) VALUES ('3','3');
INSERT INTO `departamento`(`id_departamento`, `nombre`) VALUES ('4','4');


INSERT INTO `empleados`(`id_empleado`, `nombre`, `id_departamento`) VALUES (1,'Mariela',1);
INSERT INTO `empleados`(`id_empleado`, `nombre`, `id_departamento`) VALUES (2,'Maria',3);
INSERT INTO `empleados`(`id_empleado`, `nombre`, `id_departamento`) VALUES (3,'Jose',4);