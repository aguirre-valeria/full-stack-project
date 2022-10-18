-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Educando` DEFAULT CHARACTER SET utf8 ;
USE `Educando` ;

-- -----------------------------------------------------
-- Table `Educando`.`Categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Educando`.`Categoria` (
  `id_Categoria` INT NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Descripcion` VARCHAR(45) NOT NULL,
  `Usuario_id_Usuario` INT NOT NULL,
  `Usuario_Rol_id_Rol` INT NOT NULL,
  PRIMARY KEY (`id_Categoria`, `Usuario_id_Usuario`, `Usuario_Rol_id_Rol`),
  INDEX `fk_Categoria_Usuario1_idx` (`Usuario_id_Usuario` ASC, `Usuario_Rol_id_Rol` ASC));

select* from Categoria;

-- -----------------------------------------------------
-- Table `Educando`.`Curso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Educando`.`Curso` (
  `id_Curso` INT NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Usuario_id_Usuario` INT NOT NULL,
  `Usuario_Rol_id_Rol` INT NOT NULL,
  PRIMARY KEY (`id_Curso`, `Usuario_id_Usuario`, `Usuario_Rol_id_Rol`));


-- -----------------------------------------------------
-- Table `Educando`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Educando`.`Usuario` (
  `id_Usuario` INT NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Apellido` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Contraseña` VARCHAR(45) NOT NULL,
  `Posts` VARCHAR(45) NULL,
  `Rol_id_Rol` INT NOT NULL,
  `Curso_id_Curso` INT NOT NULL,
  `Curso_Usuario_id_Usuario` INT NOT NULL,
  `Curso_Usuario_Rol_id_Rol` INT NOT NULL,
  PRIMARY KEY (`id_Usuario`, `Rol_id_Rol`, `Curso_id_Curso`, `Curso_Usuario_id_Usuario`, `Curso_Usuario_Rol_id_Rol`),
  INDEX `fk_Usuario_Rol_idx` (`Rol_id_Rol` ASC) ,
  INDEX `fk_Usuario_Curso1_idx` (`Curso_id_Curso` ASC, `Curso_Usuario_id_Usuario` ASC, `Curso_Usuario_Rol_id_Rol` ASC) );


-- -----------------------------------------------------
-- Table `Educando`.`Posts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Educando`.`Posts` (
  `id_Posts` INT NOT NULL,
  `Fecha` DATE NOT NULL,
  `Contenido` VARCHAR(45) NOT NULL,
  `Etiqueta` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_Posts`));


-- -----------------------------------------------------
-- Table `Educando`.`Rol`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Educando`.`Rol` (
  `id_Rol` INT NOT NULL,
  `Tipo` INT NOT NULL,
  PRIMARY KEY (`id_Rol`));
  

  
  
