
insert INTO area(idarea, nombre, descripcion) VALUES (1, 'matematicas', 'area de matematicas');
insert INTO area(idarea, nombre, descripcion) VALUES (2, 'algoritmos', 'area de algoritmos');
insert INTO area(idarea, nombre, descripcion) VALUES (3, 'redes', 'area de redes');


insert INTO asignatura(idasignatura, idarea, nombre, descripcion, semestre, numerocreditos)
    VALUES (1, 1, 'calculo I', 'curso de ciencias basicas', '01', 3);

insert INTO asignatura(idasignatura, idarea, nombre, descripcion, semestre, numerocreditos)
    VALUES (2, 1, 'calculo II', 'curso de ciencias basicas', '02', 3);

insert INTO asignatura(idasignatura, idarea, nombre, descripcion, semestre, numerocreditos)
    VALUES (3, 1, 'calculo III', 'curso de ciencias basicas', '03', 3);

insert INTO asignatura(idasignatura, idarea, nombre, descripcion, semestre, numerocreditos)
    VALUES (4, 1, 'ecuaciones diferenciales', 'curso de ciencias basicas, ecuaciones', '04', 3);

insert INTO asignatura(idasignatura, idarea, nombre, descripcion, semestre, numerocreditos)
    VALUES (5, 2, 'logica computacional', 'conceptos basicos de programacion', '02', 3);

insert INTO asignatura(
            idasignatura, idarea, nombre, descripcion, semestre, numerocreditos)
    VALUES (6, 2, 'Programacion I', 'Programacion basica', '03', 4);

insert INTO asignatura(idasignatura, idarea, nombre, descripcion, semestre, numerocreditos)
    VALUES (7, 2, 'Programacin II', 'Estructuras de datos', '04', 4);

insert INTO asignatura(idasignatura, idarea, nombre, descripcion, semestre, numerocreditos)
    VALUES (8, 2, 'metodos numericos', 'metodos numericos y programacion', '05', 4);

insert INTO asignatura(idasignatura, idarea, nombre, descripcion, semestre, numerocreditos)
    VALUES (9, 2, 'Desarrollo de software libre', 'Desarrollo de aplicacion con c#', '08', 3);

insert INTO asignatura(idasignatura, idarea, nombre, descripcion, semestre, numerocreditos)
    VALUES (10, 2, 'Desarrollo web', 'programacion para la web', '09', 3);

insert INTO asignatura(idasignatura, idarea, nombre, descripcion, semestre, numerocreditos)
    VALUES (11, 3, 'telematica', 'Introduccion a la telematica', '07', 3);

insert INTO asignatura(idasignatura, idarea, nombre, descripcion, semestre, numerocreditos)
    VALUES (12, 3, 'redes locales', 'configuracin de redes locales', '09', 3);

insert INTO asignatura(idasignatura, idarea, nombre, descripcion, semestre, numerocreditos)
    VALUES (13, 3, 'configuracion de redes', 'configuracion de redes de area extensa', '10', 3);


insert INTO facultad(idfacultad, nombre, descripcion)
    VALUES (1, 'Ciencias basicas', 'matematicas, quimica, fisica, biologia, entre otras');

insert INTO facultad(idfacultad, nombre, descripcion)
    VALUES (2, 'Ingenierias', 'Ing. de sistemas, Ing. Industrial, Ing. de Alimentos, entre otros.');

insert INTO facultad(idfacultad, nombre, descripcion)
    VALUES (3, 'Medicina veterinaria y zootecnia', 'veterinaria y zootecnia');

insert INTO facultad(idfacultad, nombre, descripcion)
    VALUES (4, 'Ciencias agricolas', 'El campo y los alimentos');

insert INTO facultad(idfacultad, nombre, descripcion)
    VALUES (5, 'Ciencias de la salud', 'la salud');



insert INTO departamento(iddpto, idfacultad, nombre, descripcion)
    VALUES (1, 2, 'Ingenieria de sistemas y telecomunicaciones', 'Departamento de los ingenieros de sistemas.');

insert INTO departamento(iddpto, idfacultad, nombre, descripcion)
    VALUES (2, 2, 'Ingenieria Industrial', 'Departamento de los ingenieros industriales');

insert INTO departamento(iddpto, idfacultad, nombre, descripcion)
    VALUES (3, 1, 'Matematicas y estadistica', 'departamento de loquillos');

insert INTO departamento(iddpto, idfacultad, nombre, descripcion)
    VALUES (4, 3, 'Medicina veterinaria y zootecnia', 'Medicos veterinarios');

insert INTO departamento(iddpto, idfacultad, nombre, descripcion)
    VALUES (5, 4, 'Ingenieria Agronomica', 'departamento de agronomos');

insert INTO departamento(iddpto, idfacultad, nombre, descripcion)
    VALUES (6, 4, 'Ingenieria de Alimentos', 'departamento de ingenieros de alimentos');

insert INTO departamento(iddpto, idfacultad, nombre, descripcion)
    VALUES (7, 5, 'Enfermeria', 'Los enfermeros');

insert INTO departamento(iddpto, idfacultad, nombre, descripcion)
    VALUES (8, 5, 'Bacteriologia', 'Bacteriologos');



insert INTO programa(idprog, iddpto, nombre, descripcion)
    VALUES (1, 1, 'Ing. de sistemas', 'programa de ing. de sistemas.'); 

insert INTO programa(idprog, iddpto, nombre, descripcion)
    VALUES (2, 2, 'Ing. Industrial', 'programa de ing. Industrial.'); 

insert INTO programa(idprog, iddpto, nombre, descripcion)
    VALUES (3, 3, 'Matematicas', 'matematicos'); 
    
insert INTO programa(idprog, iddpto, nombre, descripcion)
    VALUES (4, 3, 'Estadisticas', 'programa de estadistica'); 

insert INTO programa(idprog, iddpto, nombre, descripcion)
    VALUES (5, 4, 'Veterinaria', 'Medicina veterinaria'); 

insert INTO programa(idprog, iddpto, nombre, descripcion)
    VALUES (6, 5, 'Ing. Agronomica', 'agronomia'); 

insert INTO programa(idprog, iddpto, nombre, descripcion)
    VALUES (7, 6, 'Ing. Alimentos', 'Ing. de alimentos'); 

insert INTO programa(idprog, iddpto, nombre, descripcion)
    VALUES (8, 7, 'Enfermeria', 'Enfermeros'); 

insert INTO programa(idprog, iddpto, nombre, descripcion)
    VALUES (9, 8, 'Bacteriologia', 'Bacteriologos'); 




insert INTO permiso(idpermiso, descripcion, nombrepermiso, estado)
    VALUES (1, 'Permisos estudiantes activos', 'est001', '01');

insert INTO permiso(
            idpermiso, descripcion, nombrepermiso, estado)
    VALUES (2, 'Permisos estudiantes inactivos', 'est002', '01');

insert INTO permiso(
            idpermiso, descripcion, nombrepermiso, estado)
    VALUES (3, 'Permisos auxiliar para ingresar preguntas', 'est003', '01');

insert INTO permiso(
            idpermiso, descripcion, nombrepermiso, estado)
    VALUES (4, 'Permisos docente', 'doc001', '01');

insert INTO permiso(
            idpermiso, descripcion, nombrepermiso, estado)
    VALUES (5, 'Permisos preparador', 'doc002', '01');
    
insert INTO permiso(
            idpermiso, descripcion, nombrepermiso, estado)
    VALUES (6, 'Permisos administrador', 'admin001', '01');




insert INTO modulo(
            codigomod, nombre, estado, descripcion)
    VALUES (1, 'mod0001', 'activo', 'crear test de practica, simulacros de preparacion para estudiantes.');

insert INTO modulo(
            codigomod, nombre, estado, descripcion)
    VALUES (2, 'mod0002', 'activo', 'Cronograma de actividades');

insert INTO modulo(
            codigomod, nombre, estado, descripcion)
    VALUES (3, 'mod0003', 'activo', 'estadisticas');

insert INTO modulo(
            codigomod, nombre, estado, descripcion)
    VALUES (4, 'mod0004', 'activo', 'modulo de creacion de simulacros');
    
    
    insert INTO modulo(
            codigomod, nombre, estado, descripcion)
    VALUES (5, 'mod0005', 'activo', 'gestion de usuarios');
    
    insert INTO modulo(
            codigomod, nombre, estado, descripcion)
    VALUES (6, 'mod0006', 'activo', 'gestion de preguntas');
    
    insert INTO modulo(
            codigomod, nombre, estado, descripcion)
    VALUES (7, 'mod0007', 'activo', 'gestion de roles');




insert INTO permisomodulo(
            idpermisomod, codigomod, idpermiso)
    VALUES (1, 1, 1);

insert INTO permisomodulo(
            idpermisomod, codigomod, idpermiso)
    VALUES (2, 2, 1);

insert INTO permisomodulo(
            idpermisomod, codigomod, idpermiso)
    VALUES (3, 3, 4);

insert INTO permisomodulo(
            idpermisomod, codigomod, idpermiso)
    VALUES (4, 6, 4);

insert INTO permisomodulo(
            idpermisomod, codigomod, idpermiso)
    VALUES (5, 4, 5);

insert INTO permisomodulo(
            idpermisomod, codigomod, idpermiso)
    VALUES (6, 5, 6);

insert INTO permisomodulo(
            idpermisomod, codigomod, idpermiso)
    VALUES (7, 7, 6);




insert INTO rol(
            idrol, idpermiso, nombre, descripcion, estado)
    VALUES (1,1, 'estudiante', 'rol de estudiantes en preparacion', '01');

insert INTO rol(
            idrol, idpermiso, nombre, descripcion, estado)
    VALUES (2, 4,'docente', 'rol de docente', '02');

insert INTO rol(
            idrol, idpermiso, nombre, descripcion, estado)
    VALUES (3,5, 'preparador', 'docente encargado de la preparcion de un grupo para las pruebas', '03');

insert INTO rol(
            idrol, idpermiso, nombre, descripcion, estado)
    VALUES (4,6, 'administrador', 'administrador del sistema', '04');

insert INTO rol(
            idrol, idpermiso, nombre, descripcion, estado)
    VALUES (5,3, 'escritor', 'encargado de ingresar preguntas', '05');




insert INTO grupo(
            idgrupo, idrol, descripcion, codigoregistro, estado)
    VALUES (1, 1, 'Grupo creado para estudiantes en preparacion para las pruebas de estado', 'acf0123451', 'activo');

insert INTO grupo(
            idgrupo, idrol, descripcion, codigoregistro, estado)
    VALUES (2, 4, 'Grupo para usuarios con privilegios de administrador', 'acf0123452', 'activo');

insert INTO grupo(
            idgrupo, idrol, descripcion, codigoregistro, estado)
    VALUES (3, 2, 'Grupo para docentes', 'acf0123453', 'activo');

insert INTO grupo(
            idgrupo, idrol, descripcion, codigoregistro, estado)
    VALUES (4, 3, 'Grupo para docentes encargados de la preparacion de los alumnos', 'acf0123454', 'activo');
    
insert INTO grupo(
            idgrupo, idrol, descripcion, codigoregistro, estado)
    VALUES (5, 1, 'Grupo para prueba de control de acceso, estuadiante inactivos', 'acf0123455', 'inactivo');


insert INTO usuario(
            iduser, numeroid, idprog, tipoid, nombres, apellidos,direccion, municipio, departamento, pais, telefono, movil,sexo, fechanacimiento, email, usuario, clave)
    VALUES (1, 123451, 1, 'CC', 'camilo', 'cervantes',  'la patagonia', 'Monteria', 'Cordoba', 'Colombia', '5555555', '3555555555', 'M', '1989-01-01', 'usuario1@mail.com', 'kamilin8931', '12345');

insert INTO usuario(
            iduser, numeroid, idprog, tipoid, nombres, apellidos,direccion, municipio, departamento, pais, telefono, movil, sexo, fechanacimiento, email, usuario, clave)
    VALUES (2, 123452, 1, 'CC', 'luis', 'cataño',  'el inframundo', 'Monteria', 'Cordoba', 'Colombia', '5555555', '3555555555', 'M', '1989-01-01', 'usuario2@mail.com', 'luchox25', '12345');

insert INTO usuario(
            iduser, numeroid, idprog, tipoid, nombres, apellidos,direccion, municipio, departamento, pais, telefono, movil, sexo, fechanacimiento, email, usuario, clave)
    VALUES (3, 123453, 1, 'CC', 'anny', 'almanza',  'algun lugar del mundo', 'Monteria', 'Cordoba', 'Colombia', '5555555', '3555555555', 'F', '1989-01-01', 'usuario3@mail.com', 'aalmanza', '12345');

insert INTO usuario(
            iduser, numeroid, idprog, tipoid, nombres, apellidos,direccion, municipio, departamento, pais, telefono, movil, sexo, fechanacimiento, email, usuario, clave)
    VALUES (4, 123454, 1, 'CC', 'Harold', 'Bula',  'Sahagun', 'Monteria', 'Cordoba', 'Colombia', '5555555', '3555555555', 'M', '1989-01-01', 'usuario4@mail.com', 'habula', '12345');



insert INTO usuariogrupo(
            idgrupo, iduser)
    VALUES (1, 1);

insert INTO usuariogrupo(
            idgrupo, iduser)
    VALUES (2, 2);

insert INTO usuariogrupo(
            idgrupo, iduser)
    VALUES (3, 3);

insert INTO usuariogrupo(
            idgrupo, iduser)
    VALUES (4, 4);
