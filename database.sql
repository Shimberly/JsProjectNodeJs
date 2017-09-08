CREATE DATABASE JSPROJECT;
CREATE TABLE usuario (
  idusuario SERIAL PRIMARY KEY,
  usuario VARCHAR(45) NOT NULL,
  pass VARCHAR(255) NOT NULL,
  nombre VARCHAR(45) NOT NULL);

CREATE TABLE  cuento  (
   idcuento  SERIAL PRIMARY KEY,
   nombre  VARCHAR(255) NULL,
   descripcion  VARCHAR(255) NULL,
   creditos  VARCHAR(45) NULL,
   idusuario  INT NULL,
  CONSTRAINT  idusuario 
    FOREIGN KEY ( idusuario )
    REFERENCES   usuario  ( idusuario ));

CREATE TABLE  pagina  (
   idpagina  SERIAL PRIMARY KEY,
   imagen  VARCHAR(255) NOT NULL,
   audio  VARCHAR(255) NOT NULL,
   idcuento  INT NOT NULL,
  CONSTRAINT  idcuento 
    FOREIGN KEY ( idcuento )
    REFERENCES  cuento  ( idcuento ));

CREATE TABLE  pregunta  (
   idpregunta  SERIAL PRIMARY KEY,
   img1  VARCHAR(255) NULL,
   img2  VARCHAR(255) NULL,
   audio  VARCHAR(255) NULL,
   respuesta  VARCHAR(45) NULL,
   idcuento  INT NOT NULL,
  CONSTRAINT  idcuenot 
    FOREIGN KEY ( idcuento )
    REFERENCES  cuento  ( idcuento ));

INSERT INTO  usuario  (usuario ,  pass ,  nombre ) VALUES ('Shimberly', 'kim', 'Kimberly Munoz');

INSERT INTO  usuario  ( usuario ,  pass ,  nombre ) VALUES ('Deathpaul', 'paul', 'Paul Valle');

INSERT INTO  usuario  (usuario ,  pass ,  nombre ) VALUES ('Chibi', 'paola', 'Paola Ortiz');


INSERT INTO  cuento  ( nombre ,  descripcion ,  creditos ,  idusuario ) VALUES ('Los tres cerditos', 'Cuento infantil con moraleja para incentivar el trabajo', 'Tomado de guiainfantil.com', '1');

INSERT INTO  cuento  (  nombre ,  descripcion ,  creditos ,  idusuario ) VALUES ('Blancanieves', 'Cuento infantil con moraleja de no hablar con desconocidos', 'Tomado de guiainfantil.com', '1');

INSERT INTO  cuento  (  nombre ,  descripcion ,  creditos ,  idusuario ) VALUES ('Pinocho', 'Cuento infantil con moraleja ayuda a reflexionar sobre no mentir', 'Tomado de guiainfantil.com', '1');

INSERT INTO  cuento  (  nombre ,  descripcion ,  creditos ,  idusuario ) VALUES ('Pinocho', 'Cuento infantil con moraleja ayuda a reflexionar sobre no mentir', 'Tomado de guiainfantil.com', '2');

INSERT INTO  cuento  (   nombre ,  descripcion ,  creditos ,  idusuario ) VALUES ( 'Blancanieves', 'Cuento infantil con moraleja de no hablar con desconocidos', 'Tomado de guiainfantil.com', '3');

INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/cerditos1.jpg', 'audios/cerditos1.mp3', '1');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/cerditos2.jpg', 'audios/cerditos2.mp3', '1');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/cerditos3.jpg', 'audios/cerditos3.mp3', '1');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/cerditos4.jpg', 'audios/cerditos4.mp3', '1');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cerditos5.jpg', 'audios/cerditos5.mp3', '1');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cerditos6.jpg', 'audios/cerditos6.mp3', '1');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cerditos7.jpg', 'audios/cerditos7.mp3', '1');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cerditos8.jpg', 'audios/cerditos8.mp3', '1');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cerditos9.jpg', 'audios/cerditos9.mp3', '1');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cerditos10.jpg', 'audios/cerditos10.mp3', '1');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cerditos11.jpg', 'audios/cerditos11.mp3', '1');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cerditos12.jpg', 'audios/cerditos12.mp3', '1');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cerditos13.jpg', 'audios/cerditos13.mp3', '1');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cerditos14.jpg', 'audios/cerditos14.mp3', '1');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cerditos15.jpg', 'audios/cerditos15.mp3', '1');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cerditos16.jpg', 'audios/cerditos16.mp3', '1');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cerditos17.jpg', 'audios/cerditos17.mp3', '1');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cerditos18.jpg', 'audios/cerditos18.mp3', '1');


INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves1.jpg', 'images/cuentos/blancanieves1.mp3', '2');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves2.jpg', 'images/cuentos/blancanieves2.mp3', '2');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves3.jpg', 'images/cuentos/blancanieves3.mp3', '2');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves4.jpg', 'images/cuentos/blancanieves4.mp3', '2');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves5.jpg', 'images/cuentos/blancanieves5.mp3', '2');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves6.jpg', 'images/cuentos/blancanieves6.mp3', '2');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves7.jpg', 'images/cuentos/blancanieves7.mp3', '2');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves8.jpg', 'images/cuentos/blancanieves8.mp3', '2');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves9.jpg', 'images/cuentos/blancanieves9.mp3', '2');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves10.jpg', 'images/cuentos/blancanieves10.mp3', '2');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves11.jpg', 'images/cuentos/blancanieves11.mp3', '2');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves12.jpg', 'images/cuentos/blancanieves12.mp3', '2');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves13.jpg', 'images/cuentos/blancanieves13.mp3', '2');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves14.jpg', 'images/cuentos/blancanieves14.mp3', '2');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves15.jpg', 'images/cuentos/blancanieves15.mp3', '2');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves16.jpg', 'images/cuentos/blancanieves16.mp3', '2');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves17.jpg', 'images/cuentos/blancanieves17.mp3', '2');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves18.jpg', 'images/cuentos/blancanieves18.mp3', '2');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho1.jpg', 'images/cuentos/pinocho1.mp3', '3');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho2.jpg', 'images/cuentos/pinocho2.mp3', '3');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho3.jpg', 'images/cuentos/pinocho3.mp3', '3');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho4.jpg', 'images/cuentos/pinocho4.mp3', '3');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho5.jpg', 'images/cuentos/pinocho5.mp3', '3');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho6.jpg', 'images/cuentos/pinocho6.mp3', '3');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho7.jpg', 'images/cuentos/pinocho7.mp3', '3');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho8.jpg', 'images/cuentos/pinocho8.mp3', '3');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho9.jpg', 'images/cuentos/pinocho9.mp3', '3');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho10.jpg', 'images/cuentos/pinocho10.mp3','3');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho11.jpg', 'images/cuentos/pinocho11.mp3','3');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho12.jpg', 'images/cuentos/pinocho12.mp3','3');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho13.jpg', 'images/cuentos/pinocho13.mp3','3');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho14.jpg', 'images/cuentos/pinocho14.mp3','3');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho15.jpg', 'images/cuentos/pinocho15.mp3','3');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho16.jpg', 'images/cuentos/pinocho16.mp3','3');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho17.jpg', 'images/cuentos/pinocho17.mp3','3');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho18.jpg', 'images/cuentos/pinocho18.mp3','3');

INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho1.jpg', 'images/cuentos/pinocho1.mp3', '4');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho2.jpg', 'images/cuentos/pinocho2.mp3', '4');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho3.jpg', 'images/cuentos/pinocho3.mp3', '4');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho4.jpg', 'images/cuentos/pinocho4.mp3', '4');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho5.jpg', 'images/cuentos/pinocho5.mp3', '4');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho6.jpg', 'images/cuentos/pinocho6.mp3', '4');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho7.jpg', 'images/cuentos/pinocho7.mp3', '4');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho8.jpg', 'images/cuentos/pinocho8.mp3', '4');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho9.jpg', 'images/cuentos/pinocho9.mp3', '4');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho10.jpg', 'images/cuentos/pinocho10.mp3','4');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho11.jpg', 'images/cuentos/pinocho11.mp3','4');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho12.jpg', 'images/cuentos/pinocho12.mp3','4');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho13.jpg', 'images/cuentos/pinocho13.mp3','4');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho14.jpg', 'images/cuentos/pinocho14.mp3','4');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho15.jpg', 'images/cuentos/pinocho15.mp3','4');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho16.jpg', 'images/cuentos/pinocho16.mp3','4');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho17.jpg', 'images/cuentos/pinocho17.mp3','4');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/pinocho18.jpg', 'images/cuentos/pinocho18.mp3','4');

INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves1.jpg', 'images/cuentos/blancanieves1.mp3', '5');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves2.jpg', 'images/cuentos/blancanieves2.mp3', '5');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves3.jpg', 'images/cuentos/blancanieves3.mp3', '5');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves4.jpg', 'images/cuentos/blancanieves4.mp3', '5');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves5.jpg', 'images/cuentos/blancanieves5.mp3', '5');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves6.jpg', 'images/cuentos/blancanieves6.mp3', '5');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves7.jpg', 'images/cuentos/blancanieves7.mp3', '5');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves8.jpg', 'images/cuentos/blancanieves8.mp3', '5');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves9.jpg', 'images/cuentos/blancanieves9.mp3', '5');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves10.jpg', 'images/cuentos/blancanieves10.mp3','5');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves11.jpg', 'images/cuentos/blancanieves11.mp3','5');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves12.jpg', 'images/cuentos/blancanieves12.mp3','5');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves13.jpg', 'images/cuentos/blancanieves13.mp3','5');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves14.jpg', 'images/cuentos/blancanieves14.mp3','5');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves15.jpg', 'images/cuentos/blancanieves15.mp3','5');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves16.jpg', 'images/cuentos/blancanieves16.mp3','5');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves17.jpg', 'images/cuentos/blancanieves17.mp3','5');
INSERT INTO   pagina  (     imagen ,  audio ,  idcuento ) VALUES ('images/cuentos\\/blancanieves18.jpg', 'images/cuentos/blancanieves18.mp3','5');










