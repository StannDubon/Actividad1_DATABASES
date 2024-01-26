CREATE DATABASE Actividad;
USE Actividad;

CREATE TABLE cargos(
	id_cargo INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   nombre_cargo VARCHAR(30)
);

CREATE TABLE departamentos(
	id_departamento INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   nombre_departamento VARCHAR(50)
);

CREATE TABLE proyectos(
	id_proyecto INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   nombre_proyecto VARCHAR(50)
);


CREATE TABLE empleados(
	id_empleado  INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	id_cargo INT NOT NULL, CONSTRAINT fk_empleados_cargo FOREIGN KEY(id_cargo) REFERENCES cargos(id_cargo),
	id_departamento INT NOT NULL, CONSTRAINT fk_empleados_departamento FOREIGN KEY(id_departamento) REFERENCES departamentos(id_departamento),
   nombre_empleado VARCHAR(40),
   apellido_empleado VARCHAR(40),
   salario_empleado DOUBLE,
   fecha_inicio_empleado DATE
);

CREATE TABLE empleado_proyecto(
	id_empleado_proyecto INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	id_empleado INT NOT NULL, CONSTRAINT empleadoproyecto_empleado FOREIGN KEY(id_empleado) REFERENCES empleados(id_empleado),
	id_proyecto INT NOT NULL, CONSTRAINT empleadoproyecto_proyecto FOREIGN KEY(id_proyecto) REFERENCES proyectos(id_proyecto)
);