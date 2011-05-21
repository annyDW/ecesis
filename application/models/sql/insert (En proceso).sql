
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




insert INTO perfil(
            idperfil, idrol, descripcion, ultimoingreso, fechavencimiento, estado)
    VALUES (1, 1, 'Alumno unicor', '2010-04-26', '2010-07-01', 'activo');

insert INTO perfil(
            idperfil, idrol, descripcion, ultimoingreso, fechavencimiento, estado)
    VALUES (2, 4, 'Admin sistema ecesis', '2010-04-26', '2010-07-01', 'activo');

insert INTO perfil(
            idperfil, idrol, descripcion, ultimoingreso, fechavencimiento, estado)
    VALUES (3, 2, 'Docente', '2010-04-26', '2010-07-01', 'activo');

insert INTO perfil(
            idperfil, idrol, descripcion, ultimoingreso, fechavencimiento, estado)
    VALUES (4, 3, 'Preparador', '2010-04-26', '2010-07-01', 'activo');


insert INTO usuario(
            iduser, numeroid, idprog, tipoid, nombres, apellidos,direccion, telefono, sexo, fechanacimiento, email, usuario, clave)
    VALUES (1, 123451, 1, 'CC', 'camilo', 'cervantes',  'la patagonia', '5555555', 'M', '1989-01-01', 'usuario1@mail.com', 'kamilin8931', '12345');

insert INTO usuario(
            iduser, numeroid, idprog, tipoid, nombres, apellidos,direccion, telefono, sexo, fechanacimiento, email, usuario, clave)
    VALUES (2, 123452, 1, 'CC', 'luis', 'cataño',  'el inframundo', '5555555', 'M', '1989-01-01', 'usuario2@mail.com', 'luchox25', '12345');

insert INTO usuario(
            iduser, numeroid, idprog, tipoid, nombres, apellidos,direccion, telefono, sexo, fechanacimiento, email, usuario, clave)
    VALUES (3, 123453, 1, 'CC', 'anny', 'almanza',  'algun lugar del mundo', '5555555', 'F', '1989-01-01', 'usuario3@mail.com', 'aalmanza', '12345');

insert INTO usuario(
            iduser, numeroid, idprog, tipoid, nombres, apellidos,direccion, telefono, sexo, fechanacimiento, email, usuario, clave)
    VALUES (4, 123454, 1, 'CC', 'Harold', 'Bula',  'Sahagun', '5555555', 'M', '1989-01-01', 'usuario4@mail.com', 'habula', '12345');



insert INTO usuarioperfil(
            idperfil, iduser)
    VALUES (1, 1);

insert INTO usuarioperfil(
            idperfil, iduser)
    VALUES (2, 2);

insert INTO usuarioperfil(
            idperfil, iduser)
    VALUES (3, 3);

insert INTO usuarioperfil(
            idperfil, iduser)
    VALUES (4, 4);



-- 9: evaluador

insert INTO simulacro(
            idsimulacro, nombre, fechapublicacion, fechafinalizacion, duracion)
    VALUES (1, 'simulacro1','2011-04-26', '2011-04-27', '01:00:00');

insert INTO usuariocreasimulacro(
            iduser, idsimulacro)
    VALUES (9, 1);

-- 8: docente



insert INTO pregunta(
            idpregunta, iduser, idasignatura, tipo, contenido)
    VALUES (1, 8, 1, 'tipopregunta1', 'pregunta1');

insert INTO pregunta(
            idpregunta, iduser, idasignatura, tipo, contenido)
    VALUES (2, 8, 1, 'tipopregunta2', 'pregunta2');

insert INTO pregunta(
            idpregunta, iduser, idasignatura, tipo, contenido)
    VALUES (3, 8, 1, 'tipopregunta3', 'pregunta3');

insert INTO pregunta(
            idpregunta, iduser, idasignatura, tipo, contenido)
    VALUES (4, 8, 1, 'tipopregunta4', 'pregunta4');

insert INTO pregunta(
            idpregunta, iduser, idasignatura, tipo, contenido)
    VALUES (5, 8, 1, 'tipopregunta5', 'pregunta5');

insert INTO pregunta(
            idpregunta, iduser, idasignatura, tipo, contenido)
    VALUES (6, 8, 2, 'tipopregunta6', 'pregunta6');

insert INTO pregunta(
            idpregunta, iduser, idasignatura, tipo, contenido)
    VALUES (7, 8, 2, 'tipopregunta7', 'pregunta7');

insert INTO pregunta(
            idpregunta, iduser, idasignatura, tipo, contenido)
    VALUES (8, 8, 2, 'tipopregunta8', 'pregunta8');

insert INTO pregunta(
            idpregunta, iduser, idasignatura, tipo, contenido)
    VALUES (9, 8, 2, 'tipopregunta9', 'pregunta9');

insert INTO pregunta(
            idpregunta, iduser, idasignatura, tipo, contenido)
    VALUES (10, 8, 2, 'tipopregunta10', 'pregunta10');


insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (1, 1, 'opcion1a', TRUE);

insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (2, 1, 'opcion1b', FALSE);

insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (3, 1, 'opcion1c', FALSE);

insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (4, 1, 'opcion1d', FALSE);

--

insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (5, 2, 'opcion2a', TRUE);

insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (6, 2, 'opcion2b', FALSE);

insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (7, 2, 'opcion2c', FALSE);

insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (8, 2, 'opcion2d', FALSE);

--

insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (9, 3, 'opcion3a', TRUE);

insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (10, 3, 'opcion3b', FALSE);

insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (11, 3, 'opcion3c', FALSE);

insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (12, 3, 'opcion3d', FALSE);


insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (13, 4, 'opcion4a', FALSE);

insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (14, 4, 'opcion4b', FALSE);

insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (15, 4, 'opcion4c', TRUE);

insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (16, 4, 'opcion4d', FALSE);


insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (17, 5, 'opcion5a', FALSE);

insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (18, 5, 'opcion5b', FALSE);

insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (19, 5, 'opcion5c', TRUE);

insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (20, 5, 'opcion5d', FALSE);

insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (21, 6, 'opcion6a', TRUE);

insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (22, 6, 'opcion6b', FALSE);

insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (23, 6, 'opcion6c', FALSE);

insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (24, 6, 'opcion6d', FALSE);

--

insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (25, 7, 'opcion7a', TRUE);

insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (26, 7, 'opcion7b', FALSE);

insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (27, 7, 'opcion7c', FALSE);

insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (28, 7, 'opcion7d', FALSE);

--

insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (29, 8, 'opcion8a', TRUE);

insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (30, 8, 'opcion8b', FALSE);

insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (31, 8, 'opcion8c', FALSE);

insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (32, 8, 'opcion8d', FALSE);


insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (33, 9, 'opcion9a', FALSE);

insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (34, 9, 'opcion9b', FALSE);

insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (35, 9, 'opcion9c', TRUE);

insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (36, 9, 'opcion9d', FALSE);


insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (37, 10, 'opcion10a', FALSE);

insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (38, 10, 'opcion10b', FALSE);

insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (39,10, 'opcion10c', TRUE);

insert INTO respuesta(
            idrespuesta, idpregunta, contenido, correcta)
    VALUES (40, 10, 'opcion10d', FALSE);


insert INTO test(
            idsimulacro, idpregunta, idrespuesta, idtest, horainicio, horafinalizacion)
    VALUES (1, 1, 2, 1, '02:34:00', '03:34:00');

insert INTO test(
            idsimulacro, idpregunta, idrespuesta, idtest, horainicio, horafinalizacion)
    VALUES (1, 2, 5, 2, '02:34:00', '03:34:00');

insert INTO test(
            idsimulacro, idpregunta, idrespuesta, idtest, horainicio, horafinalizacion)
    VALUES (1, 3, 11, 3, '02:34:00', '03:34:00');

insert INTO test(
            idsimulacro, idpregunta, idrespuesta, idtest, horainicio, horafinalizacion)
    VALUES (1, 4, 13, 4, '02:34:00', '03:34:00');

insert INTO test(
            idsimulacro, idpregunta, idrespuesta, idtest, horainicio, horafinalizacion)
    VALUES (1, 5, 19, 5, '02:34:00', '03:34:00');

insert INTO test(
            idsimulacro, idpregunta, idrespuesta, idtest, horainicio, horafinalizacion)
    VALUES (1, 6, 22, 6, '02:34:00', '03:34:00');

insert INTO test(
            idsimulacro, idpregunta, idrespuesta, idtest, horainicio, horafinalizacion)
    VALUES (1, 7, 26, 7, '02:34:00', '03:34:00');

insert INTO test(
            idsimulacro, idpregunta, idrespuesta, idtest, horainicio, horafinalizacion)
    VALUES (1, 8, 30, 8, '02:34:00', '03:34:00');

insert INTO test(
            idsimulacro, idpregunta, idrespuesta, idtest, horainicio, horafinalizacion)
    VALUES (1, 9, 34, 9, '02:34:00', '03:34:00');

insert INTO test(
            idsimulacro, idpregunta, idrespuesta, idtest, horainicio, horafinalizacion)
    VALUES (1, 10, 38, 10, '02:34:00', '03:34:00');


insert INTO usuariosolucionatest(
            idsolucion, idtest, iduser)
    VALUES (1, 1, 1);

insert INTO usuariosolucionatest(
            idsolucion, idtest, iduser)
    VALUES (2, 2, 1);

insert INTO usuariosolucionatest(
            idsolucion, idtest, iduser)
    VALUES (3, 3, 1);

insert INTO usuariosolucionatest(
            idsolucion, idtest, iduser)
    VALUES (4, 4, 1);

insert INTO usuariosolucionatest(
            idsolucion, idtest, iduser)
    VALUES (5, 5, 1);

insert INTO usuariosolucionatest(
            idsolucion, idtest, iduser)
    VALUES (6, 6, 1);

insert INTO usuariosolucionatest(
            idsolucion, idtest, iduser)
    VALUES (7, 7, 1);

insert INTO usuariosolucionatest(
            idsolucion, idtest, iduser)
    VALUES (8, 8, 1);

insert INTO usuariosolucionatest(
            idsolucion, idtest, iduser)
    VALUES (9, 9, 1);

insert INTO usuariosolucionatest(
            idsolucion, idtest, iduser)
    VALUES (10, 10, 1);
