﻿DROP TABLE IF EXISTS usuariosolucionatest;
DROP TABLE IF EXISTS usuariocreasimulacro;
DROP TABLE IF EXISTS permisomodulo;
DROP TABLE IF EXISTS usuariogrupo;
DROP TABLE IF EXISTS test;
DROP TABLE IF EXISTS respuesta;
DROP TABLE IF EXISTS pregunta;
DROP TABLE IF EXISTS simulacro;
DROP TABLE IF EXISTS asignatura;
DROP TABLE IF EXISTS area;
DROP TABLE IF EXISTS modulo;
DROP TABLE IF EXISTS grupo;
DROP TABLE IF EXISTS rol;
DROP TABLE IF EXISTS permiso;
DROP TABLE IF EXISTS usuario;
DROP TABLE IF EXISTS programa;
DROP TABLE IF EXISTS departamento;
DROP TABLE IF EXISTS facultad;

create table facultad(
idfacultad serial NOT NULL,
nombre varchar(100) NOT NULL,
descripcion varchar(400) NOT NULL,
PRIMARY KEY(idfacultad)
);

create table departamento(
iddpto serial NOT NULL,
idfacultad INTEGER NOT NULL,
nombre varchar(100) NOT NULL,
descripcion varchar(400) NOT NULL,
PRIMARY KEY(iddpto),
FOREIGN KEY(idfacultad) REFERENCES facultad(idfacultad) on delete cascade on update cascade
);

create table programa(
idprog serial NOT NULL,
iddpto INTEGER NOT NULL,
nombre varchar(100) NOT NULL,
descripcion varchar(400) NOT NULL,
PRIMARY KEY(idprog),
FOREIGN KEY(iddpto) REFERENCES departamento(iddpto) on delete cascade on update cascade 
);

create table usuario(
	iduser serial NOT NULL,
	numeroid varchar(20) NOT NULL,
	idprog INTEGER NOT NULL,
	tipoid char(2) NOT NULL, 
	nombres varchar(250) NOT NULL,
	apellidos varchar(250) NOT NULL,
	direccion varchar(150) NOT NULL,
	municipio varchar(100) NOT NULL,
	departamento varchar(100) NOT NULL,
	pais varchar(100) NOT NULL,
	telefono varchar(20) NOT NULL,
	movil varchar(20) NOT NULL,
	sexo char(1) NOT NULL,
	fechanacimiento date NOT NULL, 
	email varchar(50) NOT NULL, 
	usuario varchar(50) NOT NULL, 
	clave varchar(50) NOT NULL,
	PRIMARY KEY(iduser),
	check(sexo='M' or sexo='F'),
	check(tipoid in('CC', 'CE', 'TI')),
	UNIQUE(numeroid),
	FOREIGN KEY(idprog)REFERENCES programa(idprog) on delete cascade on update cascade
);

create table permiso(
	idpermiso serial NOT NULL, 
	descripcion varchar(100) NOT NULL, 
	nombrePermiso varchar(50) NOT NULL,
	estado char(2) NOT NULL,
	PRIMARY KEY(idpermiso)
);

create table rol(
	idrol serial NOT NULL,
	idpermiso INTEGER NOT NULL,
	nombre varchar(50) NOT NULL,  
	descripcion varchar(100) NOT NULL,
	estado char(2) NOT NULL,
	PRIMARY KEY(idrol),
	FOREIGN KEY(idpermiso) REFERENCES permiso(idpermiso) on delete cascade on update cascade
);

create table grupo(
	idgrupo serial NOT NULL,
	idadmin INTEGER NOT NULL,
	idrol INTEGER NOT NULL, 
	descripcion varchar(100) NOT NULL,
	codigoRegistro char(10) NOT NULL, 
	estado varchar(10) NOT NULL,
	UNIQUE(codigoRegistro),
	CHECK(estado='activo' or estado='inactivo' or estado='suspendido' or estado='vencido'),
	PRIMARY KEY(idgrupo),
	FOREIGN KEY(idadmin)REFERENCES usuario(iduser) on delete cascade on update cascade,
	FOREIGN KEY(idrol)REFERENCES rol(idrol) on delete cascade on update cascade
); 

create table usuarioGrupo(
idgrupo INTEGER NOT NULL,
iduser INTEGER NOT NULL,
PRIMARY KEY(idgrupo, iduser),
FOREIGN KEY(idgrupo) REFERENCES grupo(idgrupo) on delete cascade on update cascade,
FOREIGN KEY(iduser) REFERENCES usuario(iduser) on delete cascade on update cascade
);


create table modulo(
	codigoMod integer NOT NULL, 
	nombre varchar(100) NOT NULL, 
	estado varchar(20) NOT NULL, 
	descripcion varchar(100) NOT NULL, 
	PRIMARY KEY(codigoMod),
	check(estado='activo' or estado='desactivado' or estado='privado' )
);

create table permisomodulo(
idpermisomod serial not null,
codigomod INTEGER NOT NULL,
idpermiso INTEGER NOT NULL,
PRIMARY KEY(idpermisomod),
FOREIGN KEY(codigomod)REFERENCES modulo(codigomod) on delete cascade on update cascade,
FOREIGN KEY(idpermiso)REFERENCES permiso(idpermiso) on delete cascade on update cascade
);

create table area(
idarea serial not null,
nombre VARCHAR(100)not null,
descripcion VARCHAR(500) not null,
PRIMARY KEY(idarea)
);

create table asignatura(
idasignatura serial not null,
idarea INTEGER NOT NULL,
nombre varchar(100) not null,
descripcion varchar(500)not null,
semestre varchar(2) not null,
numerocreditos INTEGER not null,
PRIMARY KEY(idasignatura),
FOREIGN KEY(idarea)REFERENCES area(idarea)on delete cascade on update cascade
);

create table pregunta(
idpregunta serial NOT NULL,
iduser INTEGER NOT NULL,
idasignatura INTEGER NOT NULL,
tipo varchar(50) NOT NULL,
contenido varchar(500) NOT NULL,
PRIMARY KEY(idpregunta),
FOREIGN KEY(iduser)REFERENCES usuario(iduser)on delete cascade on update cascade,
FOREIGN KEY(idasignatura)REFERENCES asignatura(idasignatura)on delete cascade on update cascade
);

create table respuesta(
idrespuesta serial NOT NULL,
idpregunta INTEGER NOT NULL,
contenido varchar(100) NOT NULL,
correcta boolean NOT NULL,
PRIMARY KEY(idrespuesta),
FOREIGN KEY(idpregunta) REFERENCES pregunta(idpregunta) on delete cascade on update cascade
);

create table simulacro(
idsimulacro serial not null,
nombre varchar(50) not null,
fechapublicacion date not null,
fechafinalizacion date not null,
duracion time not null,
descripcion varchar(400) not null,
PRIMARY KEY(idsimulacro)
);

create table test(
idtest serial not null,
idsimulacro INTEGER NOT NULL,
idpregunta INTEGER NOT NULL,
horainicio time not null,
horafinalizacion time,
PRIMARY KEY(idtest),
FOREIGN KEY(idsimulacro)REFERENCES simulacro(idsimulacro)on delete cascade on update cascade,
FOREIGN KEY(idpregunta)REFERENCES pregunta(idpregunta)on delete cascade on update cascade
);

create table usuariosolucionatest(
idtest INTEGER NOT NULL,
iduser INTEGER NOT NULL,
idrespuesta INTEGER NOT NULL,
PRIMARY KEY(idtest, iduser, idrespuesta),
FOREIGN KEY(idtest)REFERENCES test(idtest)on delete cascade on update cascade,
FOREIGN KEY(iduser)REFERENCES usuario(iduser) on delete cascade on update cascade,
FOREIGN KEY(idrespuesta)REFERENCES respuesta(idrespuesta) on delete cascade on update cascade
);

create table usuariocreasimulacro(
iduser INTEGER NOT NULL,
idsimulacro INTEGER NOT NULL,
PRIMARY KEY(iduser, idsimulacro),
FOREIGN KEY(iduser)REFERENCES usuario(iduser)on delete cascade on update cascade,
FOREIGN KEY(idsimulacro)REFERENCES simulacro(idsimulacro)on delete cascade on update cascade
);

--create user ecesis WITH password 'bases1436';
--grant all on usuariocreasimulacro, usuariocreasimulacro, permisomodulo, usuarioperfil, test, respuesta, pregunta to ecesis;
--grant all on simulacro, asignatura, area, modulo, permiso, perfil, rol, usuario, programa, departamento, facultad to ecesis;
