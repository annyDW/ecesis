--Areas 
insert INTO area(idarea, nombre, descripcion) VALUES (1, 'matematicas', 'area de matematicas');
insert INTO area(idarea, nombre, descripcion) VALUES (2, 'algoritmos', 'area de algoritmos');
insert INTO area(idarea, nombre, descripcion) VALUES (3, 'redes', 'area de redes');

--Asignaturas
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

--Facultades    
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

--Departamentos
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


--Programas
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


--Permisos
	-- 01: activo

insert INTO permiso(idpermiso, descripcion, nombrepermiso, estado)
    VALUES (1, 'descripcionpermiso1', 'permiso1', '01');

insert INTO permiso(
            idpermiso, descripcion, nombrepermiso, estado)
    VALUES (2, 'descripcionpermiso2', 'permiso2', '01');

insert INTO permiso(
            idpermiso, descripcion, nombrepermiso, estado)
    VALUES (3, 'descripcionpermiso3', 'permiso3', '01');

insert INTO permiso(
            idpermiso, descripcion, nombrepermiso, estado)
    VALUES (4, 'descripcionpermiso4', 'permiso4', '01');

insert INTO permiso(
            idpermiso, descripcion, nombrepermiso, estado)
    VALUES (5, 'descripcionpermiso5', 'permiso5', '01');

-- estado1:activo

insert INTO modulo(
            codigomod, nombre, estado, descripcion)
    VALUES (1, 'mod0001', 'activo', 'Modulo Estudiantes');

insert INTO modulo(
            codigomod, nombre, estado, descripcion)
    VALUES (2, 'mod0002', 'activo', 'Modulo Docentes');

insert INTO modulo(
            codigomod, nombre, estado, descripcion)
    VALUES (3, 'mod0003', 'estado1', 'descripcionmodulo3');

insert INTO modulo(
            codigomod, nombre, estado, descripcion)
    VALUES (4, 'modulo4', 'estado1', 'descripcionmodulo4');

insert INTO modulo(
            codigomod, nombre, estado, descripcion)
    VALUES (5, 'modulo5', 'estado1', 'descripcionmodulo5');


insert INTO permisomodulo(
            idpermisomod, codigomod, idpermiso)
    VALUES (1, 1, 1);

insert INTO permisomodulo(
            idpermisomod, codigomod, idpermiso)
    VALUES (2, 2, 1);

insert INTO permisomodulo(
            idpermisomod, codigomod, idpermiso)
    VALUES (3, 3, 1);

insert INTO permisomodulo(
            idpermisomod, codigomod, idpermiso)
    VALUES (4, 4, 1);

insert INTO permisomodulo(
            idpermisomod, codigomod, idpermiso)
    VALUES (5, 5, 1);

insert INTO permisomodulo(
            idpermisomod, codigomod, idpermiso)
    VALUES (6, 1, 2);

insert INTO permisomodulo(
            idpermisomod, codigomod, idpermiso)
    VALUES (7, 2, 2);

insert INTO permisomodulo(
            idpermisomod, codigomod, idpermiso)
    VALUES (8, 5, 2);

insert INTO permisomodulo(
            idpermisomod, codigomod, idpermiso)
    VALUES (9, 1, 3);

insert INTO permisomodulo(
            idpermisomod, codigomod, idpermiso)
    VALUES (10, 2, 3);

insert INTO permisomodulo(
            idpermisomod, codigomod, idpermiso)
    VALUES (11, 3, 3);

insert INTO permisomodulo(
            idpermisomod, codigomod, idpermiso)
    VALUES (12, 4, 3);

insert INTO permisomodulo(
            idpermisomod, codigomod, idpermiso)
    VALUES (13, 5, 3);

insert INTO permisomodulo(
            idpermisomod, codigomod, idpermiso)
    VALUES (14, 1, 4);

insert INTO permisomodulo(
            idpermisomod, codigomod, idpermiso)
    VALUES (15, 2, 4);

insert INTO permisomodulo(
            idpermisomod, codigomod, idpermiso)
    VALUES (16, 4, 4);

insert INTO permisomodulo(
            idpermisomod, codigomod, idpermiso)
    VALUES (17, 5, 4);

insert INTO permisomodulo(
            idpermisomod, codigomod, idpermiso)
    VALUES (18, 1, 5);

insert INTO permisomodulo(
            idpermisomod, codigomod, idpermiso)
    VALUES (19, 2, 5);

insert INTO permisomodulo(
            idpermisomod, codigomod, idpermiso)
    VALUES (20, 3, 5);

insert INTO permisomodulo(
            idpermisomod, codigomod, idpermiso)
    VALUES (21, 4, 5);

insert INTO rol(
            idrol, nombre, descripcion, estado)
    VALUES (1, 'rol1', 'descripcionrol1', '01');

insert INTO rol(
            idrol, nombre, descripcion, estado)
    VALUES (2, 'rol2', 'descripcionrol2', '02');

insert INTO rol(
            idrol, nombre, descripcion, estado)
    VALUES (3, 'rol3', 'descripcionrol3', '03');

insert INTO rol(
            idrol, nombre, descripcion, estado)
    VALUES (4, 'rol4', 'descripcionrol4', '04');

insert INTO rol(
            idrol, nombre, descripcion, estado)
    VALUES (5, 'rol5', 'descripcionrol5', '05');

insert INTO permisorol(
            idrol, idpermiso)
    VALUES (1, 1);

insert INTO permisorol(
            idrol, idpermiso)
    VALUES (2, 2);

insert INTO permisorol(
            idrol, idpermiso)
    VALUES (3, 3);

insert INTO permisorol(
            idrol, idpermiso)
    VALUES (4, 4);

insert INTO permisorol(
            idrol, idpermiso)
    VALUES (5, 5);

    
insert INTO perfil(
            idperfil, idrol, descripcion, ultimoingreso, fechavencimiento, 
            estado)
    VALUES (1, 1, 'descripcionperfil1', '2010-04-26', '2010-07-01', 
            '01');

insert INTO perfil(
            idperfil, idrol, descripcion, ultimoingreso, fechavencimiento, 
            estado)
    VALUES (2, 1, 'descripcionperfil2', '2010-04-26', '2010-07-01', 
            '01');

insert INTO perfil(
            idperfil, idrol, descripcion, ultimoingreso, fechavencimiento, 
            estado)
    VALUES (3, 1, 'descripcionperfil3', '2010-04-26', '2010-07-01', 
            '01');

insert INTO perfil(
            idperfil, idrol, descripcion, ultimoingreso, fechavencimiento, 
            estado)
    VALUES (4, 2, 'descripcionperfil4', '2010-04-26', '2010-07-01', 
            '01');

insert INTO perfil(
            idperfil, idrol, descripcion, ultimoingreso, fechavencimiento, 
            estado)
    VALUES (5, 2, 'descripcionperfil5', '2010-04-26', '2010-07-01', 
            '01');

insert INTO perfil(
            idperfil, idrol, descripcion, ultimoingreso, fechavencimiento, 
            estado)
    VALUES (6, 2, 'descripcionperfil6', '2010-04-26', '2010-07-01', 
            '01');

insert INTO perfil(
            idperfil, idrol, descripcion, ultimoingreso, fechavencimiento, 
            estado)
    VALUES (7, 3, 'descripcionperfil7', '2010-04-26', '2010-07-01', 
            '01');

insert INTO perfil(
            idperfil, idrol, descripcion, ultimoingreso, fechavencimiento, 
            estado)
    VALUES (8, 3, 'descripcionperfil8', '2010-04-26', '2010-07-01', 
            '01');

insert INTO perfil(
            idperfil, idrol, descripcion, ultimoingreso, fechavencimiento, 
            estado)
    VALUES (9, 3, 'descripcionperfil9', '2010-04-26', '2010-07-01', 
            '01');

insert INTO perfil(
            idperfil, idrol, descripcion, ultimoingreso, fechavencimiento, 
            estado)
    VALUES (10, 4, 'descripcionperfil10', '2010-04-26', '2010-07-01', 
            '01');

insert INTO perfil(
            idperfil, idrol, descripcion, ultimoingreso, fechavencimiento, 
            estado)
    VALUES (11, 4, 'descripcionperfil11', '2010-04-26', '2010-07-01', 
            '01');

insert INTO perfil(
            idperfil, idrol, descripcion, ultimoingreso, fechavencimiento, 
            estado)
    VALUES (12, 4, 'descripcionperfil11', '2010-04-26', '2010-07-01', 
            '01');

insert INTO perfil(
            idperfil, idrol, descripcion, ultimoingreso, fechavencimiento, 
            estado)
    VALUES (13, 5, 'descripcionperfil11', '2010-04-26', '2010-07-01', 
            '01');

insert INTO perfil(
            idperfil, idrol, descripcion, ultimoingreso, fechavencimiento, 
            estado)
    VALUES (14, 5, 'descripcionperfil11', '2010-04-26', '2010-07-01', 
            '01');

insert INTO perfil(
            idperfil, idrol, descripcion, ultimoingreso, fechavencimiento, 
            estado)
    VALUES (15, 5, 'descripcionperfil11', '2010-04-26', '2010-07-01', 
            '01');

insert INTO usuario(
            iduser, numeroid, idprog, tipoid, primernombre, segundonombre, 
            direccion, telefono, sexo, fechanacimiento, email, usuario, clave)
    VALUES (1, 123451, 75, 'CC', 'usuario1', 'usuario1',  
            'direccionusuario1', 'telefonousuario1', 'M', '1989-01-01', 'usuario1@mail.com', 'usuario1', 'claveusuario1');

insert INTO usuario(
            iduser, numeroid, idprog, tipoid, primernombre, segundonombre, 
            direccion, telefono, sexo, fechanacimiento, email, usuario, clave)
    VALUES (2, 123452, 75, 'CC', 'usuario2', 'usuario2',  
            'direccionusuario2', 'telefonousuario2', 'M', '1989-01-01', 'usuario2@mail.com', 'usuario2', 'claveusuario2');

insert INTO usuario(
            iduser, numeroid, idprog, tipoid, primernombre, segundonombre, 
            direccion, telefono, sexo, fechanacimiento, email, usuario, clave)
    VALUES (3, 123453, 75, 'CC', 'usuario3', 'usuario3',  
            'direccionusuario3', 'telefonousuario3', 'M', '1989-01-01', 'usuario3@mail.com', 'usuario3', 'claveusuario3');

insert INTO usuario(
            iduser, numeroid, idprog, tipoid, primernombre, segundonombre, 
            direccion, telefono, sexo, fechanacimiento, email, usuario, clave)
    VALUES (4, 123454, 75, 'CC', 'usuario4', 'usuario4',  
            'direccionusuario4', 'telefonousuario4', 'M', '1989-01-01', 'usuario4@mail.com', 'usuario4', 'claveusuario4');

insert INTO usuario(
            iduser, numeroid, idprog, tipoid, primernombre, segundonombre, 
            direccion, telefono, sexo, fechanacimiento, email, usuario, clave)
    VALUES (5, 123455, 75, 'CC', 'usuario5', 'usuario5',  
            'direccionusuario5', 'telefonousuario5', 'M', '1989-01-01', 'usuario5@mail.com', 'usuario5', 'claveusuario5');

insert INTO usuario(
            iduser, numeroid, idprog, tipoid, primernombre, segundonombre, 
            direccion, telefono, sexo, fechanacimiento, email, usuario, clave)
    VALUES (6, 123456, 75, 'CC', 'usuario6', 'usuario6',  
            'direccionusuario6', 'telefonousuario6', 'M', '1989-01-01', 'usuario6@mail.com', 'usuario6', 'claveusuario6');

insert INTO usuario(
            iduser, numeroid, idprog, tipoid, primernombre, segundonombre, 
            direccion, telefono, sexo, fechanacimiento, email, usuario, clave)
    VALUES (7, 123457, 75, 'CC', 'usuario7', 'usuario7',  
            'direccionusuario7', 'telefonousuario7', 'M', '1989-01-01', 'usuario7@mail.com', 'usuario7', 'claveusuario7');

insert INTO usuario(
            iduser, numeroid, idprog, tipoid, primernombre, segundonombre, 
            direccion, telefono, sexo, fechanacimiento, email, usuario, clave)
    VALUES (8, 123458, 75, 'CC', 'usuario8', 'usuario8',  
            'direccionusuario8', 'telefonousuario8', 'M', '1989-01-01', 'usuario8@mail.com', 'usuario8', 'claveusuario8');

insert INTO usuario(
            iduser, numeroid, idprog, tipoid, primernombre, segundonombre, 
            direccion, telefono, sexo, fechanacimiento, email, usuario, clave)
    VALUES (9, 123459, 75, 'CC', 'usuario9', 'usuario9',  
            'direccionusuario9', 'telefonousuario9', 'M', '1989-01-01', 'usuario9@mail.com', 'usuario9', 'claveusuario9');



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

insert INTO usuarioperfil(
            idperfil, iduser)
    VALUES (5, 5);

insert INTO usuarioperfil(
            idperfil, iduser)
    VALUES (6, 6);

insert INTO usuarioperfil(
            idperfil, iduser)
    VALUES (7, 7);

insert INTO usuarioperfil(
            idperfil, iduser)
    VALUES (8, 8);

insert INTO usuarioperfil(
            idperfil, iduser)
    VALUES (9, 9);

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
