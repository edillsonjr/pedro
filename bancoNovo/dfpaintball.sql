-- MySQL Script generated by MySQL Workbench
-- 11/30/16 16:38:09
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema dfpaintballnovo
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dfpaintballnovo
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dfpaintballnovo` DEFAULT CHARACTER SET utf8 ;
USE `dfpaintballnovo` ;

-- -----------------------------------------------------
-- Table `dfpaintballnovo`.`perfil`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dfpaintballnovo`.`perfil` (
  `id_perfil` INT NOT NULL AUTO_INCREMENT,
  `login` VARCHAR(12) NOT NULL,
  `senha` VARCHAR(15) NOT NULL,
  `tipo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_perfil`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dfpaintballnovo`.`equipe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dfpaintballnovo`.`equipe` (
  `id_equipe` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `pontos` VARCHAR(45) NULL,
  PRIMARY KEY (`id_equipe`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dfpaintballnovo`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dfpaintballnovo`.`usuario` (
  `cpf` INT NOT NULL,
  `nome` VARCHAR(83) NOT NULL,
  `sexo` CHAR NOT NULL,
  `endereco` VARCHAR(83) NOT NULL,
  `email` VARCHAR(83) NOT NULL,
  `perfil_id_perfil` INT NOT NULL,
  `equipe_id_equipe` INT NULL,
  `descricao_perfil` VARCHAR(500) NOT NULL,
  `telefone` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cpf`),
  INDEX `fk_usuario_perfil1_idx` (`perfil_id_perfil` ASC),
  INDEX `fk_usuario_equipe1_idx` (`equipe_id_equipe` ASC),
  CONSTRAINT `fk_usuario_perfil1`
    FOREIGN KEY (`perfil_id_perfil`)
    REFERENCES `dfpaintballnovo`.`perfil` (`id_perfil`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_equipe1`
    FOREIGN KEY (`equipe_id_equipe`)
    REFERENCES `dfpaintballnovo`.`equipe` (`id_equipe`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dfpaintballnovo`.`agendamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dfpaintballnovo`.`agendamento` (
  `id_agendamento` INT NOT NULL AUTO_INCREMENT,
  `responsavel` VARCHAR(45) NOT NULL,
  `qtd_pessoas` INT NOT NULL,
  `horario` VARCHAR(5) NOT NULL,
  `data` DATE NOT NULL,
  `telefone` VARCHAR(45) NOT NULL,
  `usuario_cpf` INT NOT NULL,
  PRIMARY KEY (`id_agendamento`),
  INDEX `fk_agendamento_usuario1_idx` (`usuario_cpf` ASC),
  CONSTRAINT `fk_agendamento_usuario1`
    FOREIGN KEY (`usuario_cpf`)
    REFERENCES `dfpaintballnovo`.`usuario` (`cpf`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
