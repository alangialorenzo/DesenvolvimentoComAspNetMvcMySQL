SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `CadeMeuMedicoBD` DEFAULT CHARACTER SET utf8 ;
USE `CadeMeuMedicoBD` ;

-- -----------------------------------------------------
-- Table `CadeMeuMedicoBD`.`BannersPublicitarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CadeMeuMedicoBD`.`BannersPublicitarios` (
  `IDBanner` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `TituloCampanha` VARCHAR(60) NOT NULL,
  `BannerCampanha` VARCHAR(200) NOT NULL,
  `LinkBanner` VARCHAR(200) NULL DEFAULT NULL,
  PRIMARY KEY (`IDBanner`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `CadeMeuMedicoBD`.`Cidades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CadeMeuMedicoBD`.`Cidades` (
  `IDCidade` INT(11) NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`IDCidade`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `CadeMeuMedicoBD`.`Especialidades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CadeMeuMedicoBD`.`Especialidades` (
  `IDEspecialidade` INT(11) NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(80) NOT NULL,
  PRIMARY KEY (`IDEspecialidade`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `CadeMeuMedicoBD`.`Medicos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CadeMeuMedicoBD`.`Medicos` (
  `IDMedico` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `CRM` VARCHAR(30) NOT NULL,
  `Nome` VARCHAR(80) NOT NULL,
  `Endereco` VARCHAR(100) NOT NULL,
  `Bairro` VARCHAR(60) NOT NULL,
  `Email` VARCHAR(100) NOT NULL,
  `AtendePorConvenio` BIT(1) NOT NULL,
  `TemClinica` BIT(1) NOT NULL,
  `WebsiteBlog` VARCHAR(80) NOT NULL,
  `IDCidade` INT(11) NOT NULL,
  `IDEspecialidade` INT(11) NOT NULL,
  PRIMARY KEY (`IDMedico`),
  INDEX `IDCidade` (`IDCidade` ASC),
  INDEX `IDEspecialidade` (`IDEspecialidade` ASC),
  CONSTRAINT `medicos_ibfk_3`
    FOREIGN KEY (`IDEspecialidade`)
    REFERENCES `CadeMeuMedicoBD`.`Especialidades` (`IDEspecialidade`),
  CONSTRAINT `medicos_ibfk_1`
    FOREIGN KEY (`IDCidade`)
    REFERENCES `CadeMeuMedicoBD`.`Cidades` (`IDCidade`),
  CONSTRAINT `medicos_ibfk_2`
    FOREIGN KEY (`IDCidade`)
    REFERENCES `CadeMeuMedicoBD`.`Cidades` (`IDCidade`))
ENGINE = InnoDB
AUTO_INCREMENT = 24
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `CadeMeuMedicoBD`.`Usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CadeMeuMedicoBD`.`Usuarios` (
  `IDUsuario` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(80) NOT NULL,
  `Login` VARCHAR(30) NOT NULL,
  `Senha` VARCHAR(100) NOT NULL,
  `Email` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`IDUsuario`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

----------------------------------------------------------
----- Dados ----------------------------------------------
----------------------------------------------------------
INSERT INTO `BannersPublicitarios` (`IDBanner`, `TituloCampanha`, `BannerCampanha`, `LinkBanner`) VALUES
	(1, 'Campanha Conio', 'logo-conio-cademeumedico.png', 'http://conio.com.br'),
	(2, 'Campanha Casa do Código', 'banner-cdc-cademeumedico.png', 'http://casadocodigo.com.br');
	
INSERT INTO `Cidades` (`IDCidade`, `Nome`) VALUES
	(1, 'Blumenau'),
	(2, 'São José do Rio Preto'),
	(3, 'Campinas');
	
INSERT INTO `Especialidades` (`IDEspecialidade`, `Nome`) VALUES
	(1, 'Cardiologista'),
	(2, 'Neurologista');
	
INSERT INTO `Medicos` (`IDMedico`, `CRM`, `Nome`, `Endereco`, `Bairro`, `Email`, `AtendePorConvenio`, `TemClinica`, `WebsiteBlog`, `IDCidade`, `IDEspecialidade`) VALUES
	(1, '589789', 'Juca Mendez da Silva', 'Getúlio Vargas', 'Centro', 'juca@gmail.com', b'1', b'1', 'www.jucamendezclinica.com.br', 1, 1),
	(2, '456878', 'Jucas Ferraz', 'Getulio Vargas', 'Parque Sol', 'jucas@jucas.com', b'1', b'1', 'www.juca.com.br', 1, 1),
	(21, '65786575', 'aaaaaaa', 'aaaaaaa', 'aaaaaaa', 'aaaaaaaaaa', b'1', b'1', 'aaaaaaaa', 2, 2),
	(22, '65786575', 'aaaaaaa', 'aaaaaaa', 'aaaaaaa', 'aaaaaaaaaa', b'1', b'1', 'aaaaaaaa', 2, 2),
	(23, '898789', 'MySQL Database', 'MySQL Database', 'MySQL Database', 'MySQL Database', b'1', b'1', 'MySQL Database', 3, 1);
	
INSERT INTO `Usuarios` (`IDUsuario`, `Nome`, `Login`, `Senha`, `Email`) VALUES
	(1, 'Administrador', 'admin', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', 'admin@cdmm.com');