CREATE DATABASE JSPROJECT;
CREATE TABLE `JSPROJECT`.`usuario` (
  `idusuario` INT NOT NULL,
  `user` VARCHAR(45) NOT NULL,
  `pass` VARCHAR(255) NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idusuario`));

CREATE TABLE `JSPROJECT`.`cuento` (
  `idcuento` INT NOT NULL,
  `nombre` VARCHAR(255) NULL,
  `descripcion` VARCHAR(45) NULL,
  `creditos` VARCHAR(45) NULL,
  `idusuario` INT NULL,
  PRIMARY KEY (`idcuento`),
  INDEX `id_usuario_idx` (`idusuario` ASC),
  CONSTRAINT `idusuario`
    FOREIGN KEY (`idusuario`)
    REFERENCES `JSPROJECT`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `JSPROJECT`.`pagina` (
  `idpagina` INT NOT NULL,
  `imagen` VARCHAR(255) NOT NULL,
  `audio` VARCHAR(255) NOT NULL,
  `idcuento` INT NOT NULL,
  PRIMARY KEY (`idpagina`),
  INDEX `idcuento_idx` (`idcuento` ASC),
  CONSTRAINT `idcuento`
    FOREIGN KEY (`idcuento`)
    REFERENCES `JSPROJECT`.`cuento` (`idcuento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `JSPROJECT`.`pregunta` (
  `idpregunta` INT NOT NULL,
  `img1` VARCHAR(255) NULL,
  `img2` VARCHAR(255) NULL,
  `audio` VARCHAR(255) NULL,
  `respuesta` VARCHAR(45) NULL,
  `idcuento` INT NOT NULL,
  PRIMARY KEY (`idpregunta`),
  INDEX `idcuenot_idx` (`idcuento` ASC),
  CONSTRAINT `idcuenot`
    FOREIGN KEY (`idcuento`)
    REFERENCES `JSPROJECT`.`cuento` (`idcuento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO `JSPROJECT`.`usuario` (`idusuario`, `user`, `pass`, `nombre`) VALUES ('1', 'Shimberly', 'kim', 'Kimberly Munoz');

INSERT INTO `JSPROJECT`.`usuario` (`idusuario`, `user`, `pass`, `nombre`) VALUES ('2', 'Deathpaul', 'paul', 'Paul Valle');

INSERT INTO `JSPROJECT`.`usuario` (`idusuario`, `user`, `pass`, `nombre`) VALUES ('3', 'Chibi', 'paola', 'Paola Ortiz');

ALTER TABLE `JSPROJECT`.`cuento` 
CHANGE COLUMN `descripcion` `descripcion` VARCHAR(255) NULL DEFAULT NULL ;


INSERT INTO `JSPROJECT`.`cuento` (`idcuento`, `nombre`, `descripcion`, `creditos`, `idusuario`) VALUES ('1', 'Los tres cerditos', 'Cuento infantil con moraleja para incentivar el trabajo', 'Tomado de guiainfantil.com', '1');

INSERT INTO `JSPROJECT`.`cuento` (`idcuento`, `nombre`, `descripcion`, `creditos`, `idusuario`) VALUES ('2', 'Blancanieves', 'Cuento infantil con moraleja de no hablar con desconocidos', 'Tomado de guiainfantil.com', '1');

INSERT INTO `JSPROJECT`.`cuento` (`idcuento`, `nombre`, `descripcion`, `creditos`, `idusuario`) VALUES ('3', 'Pinocho', 'Cuento infantil con moraleja ayuda a reflexionar sobre no mentir', 'Tomado de guiainfantil.com', '1');

INSERT INTO `JSPROJECT`.`cuento` (`idcuento`, `nombre`, `descripcion`, `creditos`, `idusuario`) VALUES ('4', 'Pinocho', 'Cuento infantil con moraleja ayuda a reflexionar sobre no mentir', 'Tomado de guiainfantil.com', '2');

INSERT INTO `JSPROJECT`.`cuento` (`idcuento`, `nombre`, `descripcion`, `creditos`, `idusuario`) VALUES ('5', 'Blancanieves', 'Cuento infantil con moraleja de no hablar con desconocidos', 'Tomado de guiainfantil.com', '3');

INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('1', 'images/cerditos1.jpg', 'audios/cerditos1.mp3', '1');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('2', 'images/cerditos2.jpg', 'audios/cerditos2.mp3', '1');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('3', 'images/cerditos3.jpg', 'audios/cerditos3.mp3', '1');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('4', 'images/cerditos4.jpg', 'audios/cerditos4.mp3', '1');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('5', 'images/cerditos5.jpg', 'audios/cerditos5.mp3', '1');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('6', 'images/cerditos6.jpg', 'audios/cerditos6.mp3', '1');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('7', 'images/cerditos7.jpg', 'audios/cerditos7.mp3', '1');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('8', 'images/cerditos8.jpg', 'audios/cerditos8.mp3', '1');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('9', 'images/cerditos9.jpg', 'audios/cerditos9.mp3', '1');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('10', 'images/cerditos10.jpg', 'audios/cerditos10.mp3', '1');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('11', 'images/cerditos11.jpg', 'audios/cerditos11.mp3', '1');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('12', 'images/cerditos12.jpg', 'audios/cerditos12.mp3', '1');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('13', 'images/cerditos13.jpg', 'audios/cerditos13.mp3', '1');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('14', 'images/cerditos14.jpg', 'audios/cerditos14.mp3', '1');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('15', 'images/cerditos15.jpg', 'audios/cerditos15.mp3', '1');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('16', 'images/cerditos16.jpg', 'audios/cerditos16.mp3', '1');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('17', 'images/cerditos17.jpg', 'audios/cerditos17.mp3', '1');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('18', 'images/cerditos18.jpg', 'audios/cerditos18.mp3', '1');


INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('19', 'images/cuentos\\/blancanieves1.jpg', 'images/cuentos/blancanieves1.mp3', '2');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('20', 'images/cuentos\\/blancanieves2.jpg', 'images/cuentos/blancanieves2.mp3', '2');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('21', 'images/cuentos\\/blancanieves3.jpg', 'images/cuentos/blancanieves3.mp3', '2');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('22', 'images/cuentos\\/blancanieves4.jpg', 'images/cuentos/blancanieves4.mp3', '2');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('23', 'images/cuentos\\/blancanieves5.jpg', 'images/cuentos/blancanieves5.mp3', '2');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('24', 'images/cuentos\\/blancanieves6.jpg', 'images/cuentos/blancanieves6.mp3', '2');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('25', 'images/cuentos\\/blancanieves7.jpg', 'images/cuentos/blancanieves7.mp3', '2');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('26', 'images/cuentos\\/blancanieves8.jpg', 'images/cuentos/blancanieves8.mp3', '2');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('27', 'images/cuentos\\/blancanieves9.jpg', 'images/cuentos/blancanieves9.mp3', '2');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('28', 'images/cuentos\\/blancanieves10.jpg', 'images/cuentos/blancanieves10.mp3', '2');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('29', 'images/cuentos\\/blancanieves11.jpg', 'images/cuentos/blancanieves11.mp3', '2');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('30', 'images/cuentos\\/blancanieves12.jpg', 'images/cuentos/blancanieves12.mp3', '2');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('31', 'images/cuentos\\/blancanieves13.jpg', 'images/cuentos/blancanieves13.mp3', '2');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('32', 'images/cuentos\\/blancanieves14.jpg', 'images/cuentos/blancanieves14.mp3', '2');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('33', 'images/cuentos\\/blancanieves15.jpg', 'images/cuentos/blancanieves15.mp3', '2');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('34', 'images/cuentos\\/blancanieves16.jpg', 'images/cuentos/blancanieves16.mp3', '2');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('35', 'images/cuentos\\/blancanieves17.jpg', 'images/cuentos/blancanieves17.mp3', '2');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('36', 'images/cuentos\\/blancanieves18.jpg', 'images/cuentos/blancanieves18.mp3', '2');

INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('37', 'images/cuentos\\/pinocho1.jpg', 'images/cuentos/pinocho1.mp3', '3');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('38', 'images/cuentos\\/pinocho2.jpg', 'images/cuentos/pinocho2.mp3', '3');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('39', 'images/cuentos\\/pinocho3.jpg', 'images/cuentos/pinocho3.mp3', '3');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('40', 'images/cuentos\\/pinocho4.jpg', 'images/cuentos/pinocho4.mp3', '3');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('41', 'images/cuentos\\/pinocho5.jpg', 'images/cuentos/pinocho5.mp3', '3');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('42', 'images/cuentos\\/pinocho6.jpg', 'images/cuentos/pinocho6.mp3', '3');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('43', 'images/cuentos\\/pinocho7.jpg', 'images/cuentos/pinocho7.mp3', '3');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('44', 'images/cuentos\\/pinocho8.jpg', 'images/cuentos/pinocho8.mp3', '3');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('45', 'images/cuentos\\/pinocho9.jpg', 'images/cuentos/pinocho9.mp3', '3');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('46', 'images/cuentos\\/pinocho10.jpg', 'images/cuentos/pinocho10.mp3','3');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('47', 'images/cuentos\\/pinocho11.jpg', 'images/cuentos/pinocho11.mp3','3');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('48', 'images/cuentos\\/pinocho12.jpg', 'images/cuentos/pinocho12.mp3','3');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('49', 'images/cuentos\\/pinocho13.jpg', 'images/cuentos/pinocho13.mp3','3');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('50', 'images/cuentos\\/pinocho14.jpg', 'images/cuentos/pinocho14.mp3','3');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('51', 'images/cuentos\\/pinocho15.jpg', 'images/cuentos/pinocho15.mp3','3');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('52', 'images/cuentos\\/pinocho16.jpg', 'images/cuentos/pinocho16.mp3','3');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('53', 'images/cuentos\\/pinocho17.jpg', 'images/cuentos/pinocho17.mp3','3');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('54', 'images/cuentos\\/pinocho18.jpg', 'images/cuentos/pinocho18.mp3','3');

INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('55', 'images/cuentos\\/pinocho1.jpg', 'images/cuentos/pinocho1.mp3', '4');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('56', 'images/cuentos\\/pinocho2.jpg', 'images/cuentos/pinocho2.mp3', '4');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('57', 'images/cuentos\\/pinocho3.jpg', 'images/cuentos/pinocho3.mp3', '4');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('58', 'images/cuentos\\/pinocho4.jpg', 'images/cuentos/pinocho4.mp3', '4');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('59', 'images/cuentos\\/pinocho5.jpg', 'images/cuentos/pinocho5.mp3', '4');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('60', 'images/cuentos\\/pinocho6.jpg', 'images/cuentos/pinocho6.mp3', '4');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('61', 'images/cuentos\\/pinocho7.jpg', 'images/cuentos/pinocho7.mp3', '4');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('62', 'images/cuentos\\/pinocho8.jpg', 'images/cuentos/pinocho8.mp3', '4');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('63', 'images/cuentos\\/pinocho9.jpg', 'images/cuentos/pinocho9.mp3', '4');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('64', 'images/cuentos\\/pinocho10.jpg', 'images/cuentos/pinocho10.mp3','4');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('65', 'images/cuentos\\/pinocho11.jpg', 'images/cuentos/pinocho11.mp3','4');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('66', 'images/cuentos\\/pinocho12.jpg', 'images/cuentos/pinocho12.mp3','4');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('67', 'images/cuentos\\/pinocho13.jpg', 'images/cuentos/pinocho13.mp3','4');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('68', 'images/cuentos\\/pinocho14.jpg', 'images/cuentos/pinocho14.mp3','4');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('69', 'images/cuentos\\/pinocho15.jpg', 'images/cuentos/pinocho15.mp3','4');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('70', 'images/cuentos\\/pinocho16.jpg', 'images/cuentos/pinocho16.mp3','4');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('71', 'images/cuentos\\/pinocho17.jpg', 'images/cuentos/pinocho17.mp3','4');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('72', 'images/cuentos\\/pinocho18.jpg', 'images/cuentos/pinocho18.mp3','4');

INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('73', 'images/cuentos\\/blancanieves1.jpg', 'images/cuentos/blancanieves1.mp3', '5');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('74', 'images/cuentos\\/blancanieves2.jpg', 'images/cuentos/blancanieves2.mp3', '5');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('75', 'images/cuentos\\/blancanieves3.jpg', 'images/cuentos/blancanieves3.mp3', '5');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('76', 'images/cuentos\\/blancanieves4.jpg', 'images/cuentos/blancanieves4.mp3', '5');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('77', 'images/cuentos\\/blancanieves5.jpg', 'images/cuentos/blancanieves5.mp3', '5');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('78', 'images/cuentos\\/blancanieves6.jpg', 'images/cuentos/blancanieves6.mp3', '5');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('79', 'images/cuentos\\/blancanieves7.jpg', 'images/cuentos/blancanieves7.mp3', '5');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('80', 'images/cuentos\\/blancanieves8.jpg', 'images/cuentos/blancanieves8.mp3', '5');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('81', 'images/cuentos\\/blancanieves9.jpg', 'images/cuentos/blancanieves9.mp3', '5');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('82', 'images/cuentos\\/blancanieves10.jpg', 'images/cuentos/blancanieves10.mp3','5');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('83', 'images/cuentos\\/blancanieves11.jpg', 'images/cuentos/blancanieves11.mp3','5');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('84', 'images/cuentos\\/blancanieves12.jpg', 'images/cuentos/blancanieves12.mp3','5');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('85', 'images/cuentos\\/blancanieves13.jpg', 'images/cuentos/blancanieves13.mp3','5');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('86', 'images/cuentos\\/blancanieves14.jpg', 'images/cuentos/blancanieves14.mp3','5');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('87', 'images/cuentos\\/blancanieves15.jpg', 'images/cuentos/blancanieves15.mp3','5');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('88', 'images/cuentos\\/blancanieves16.jpg', 'images/cuentos/blancanieves16.mp3','5');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('89', 'images/cuentos\\/blancanieves17.jpg', 'images/cuentos/blancanieves17.mp3','5');
INSERT INTO `JSPROJECT`.`pagina` (`idpagina`, `imagen`, `audio`, `idcuento`) VALUES ('90', 'images/cuentos\\/blancanieves18.jpg', 'images/cuentos/blancanieves18.mp3','5');










