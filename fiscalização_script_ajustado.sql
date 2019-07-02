-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema fiscalizacao
-- -----------------------------------------------------
drop SCHEMA IF EXISTS `fiscalizacao` ;

-- -----------------------------------------------------
-- Schema fiscalizacaoadvertenciasequencialadvertenciaidCONDICAO
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `fiscalizacao` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
drop SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `fiscalizacao` ;

-- -----------------------------------------------------
-- Table `fiscalizacao`.`irregularidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fiscalizacao`.`irregularidade` (
  `codigo` INT(11) NOT NULL,
  `descricao` VARCHAR(45) NULL DEFAULT NULL,
  `valor` FLOAT NULL DEFAULT NULL,
  PRIMARY KEY (`codigo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fiscalizacao`.`tipo_auto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fiscalizacao`.`tipo_auto` (
  `codigo` INT(11) NOT NULL,
  `descricao` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`codigo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fiscalizacao`.`auto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fiscalizacao`.`auto` (
  `codigo` INT(11) NOT NULL,
  `data_emissao` DATE NULL DEFAULT NULL,
  `obs` VARCHAR(45) NULL DEFAULT NULL,
  `matricula` VARCHAR(45) NULL DEFAULT NULL,
  `IRREGULARIDADE_codigo` INT(11) NOT NULL,
  `TIPO_AUTO_codigo` INT(11) NOT NULL,
  PRIMARY KEY (`codigo`),
  INDEX `fk_AUTO_IRREGULARIDADE1_idx` (`IRREGULARIDADE_codigo` ASC),
  INDEX `fk_AUTO_TIPO_AUTO1_idx` (`TIPO_AUTO_codigo` ASC),
  CONSTRAINT `fk_AUTO_IRREGULARIDADE1`
    FOREIGN KEY (`IRREGULARIDADE_codigo`)
    REFERENCES `fiscalizacao`.`irregularidade` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_AUTO_TIPO_AUTO1`
    FOREIGN KEY (`TIPO_AUTO_codigo`)
    REFERENCES `fiscalizacao`.`tipo_auto` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fiscalizacao`.`modelo_templete`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fiscalizacao`.`modelo_templete` (
  `idMODELO_TEMPLETE` INT(11) NOT NULL,
  `nome` VARCHAR(45) NULL DEFAULT NULL,
  `cabecalho_linha_1` VARCHAR(45) NULL DEFAULT NULL,
  `cabecalho_linha_2` VARCHAR(45) NULL DEFAULT NULL,
  `cabecalho_linha_3` VARCHAR(45) NULL DEFAULT NULL,
  `TIPO_AUTO_codigo` INT(11) NOT NULL,
  PRIMARY KEY (`idMODELO_TEMPLETE`),
  INDEX `fk_MODELO_TEMPLETE_TIPO_AUTO1_idx` (`TIPO_AUTO_codigo` ASC),
  CONSTRAINT `fk_MODELO_TEMPLETE_TIPO_AUTO1`
    FOREIGN KEY (`TIPO_AUTO_codigo`)
    REFERENCES `fiscalizacao`.`tipo_auto` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fiscalizacao`.`advertencia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fiscalizacao`.`advertencia` (
  `sequencial` INT(11) NOT NULL,
  `obs` VARCHAR(45) NULL DEFAULT NULL,
  `tipo` VARCHAR(45) NULL DEFAULT NULL,
  `descricao` VARCHAR(45) NULL DEFAULT NULL,
  `AUTO_codigo` INT(11) NOT NULL,
  `MODELO_TEMPLETE_idMODELO_TEMPLETE` INT(11) NOT NULL,
  PRIMARY KEY (`sequencial`, `AUTO_codigo`),
  INDEX `fk_ADVERTENCIA_AUTO1_idx` (`AUTO_codigo` ASC),
  INDEX `fk_ADVERTENCIA_MODELO_TEMPLETE1_idx` (`MODELO_TEMPLETE_idMODELO_TEMPLETE` ASC),
  CONSTRAINT `fk_ADVERTENCIA_AUTO1`
    FOREIGN KEY (`AUTO_codigo`)
    REFERENCES `fiscalizacao`.`auto` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ADVERTENCIA_MODELO_TEMPLETE1`
    FOREIGN KEY (`MODELO_TEMPLETE_idMODELO_TEMPLETE`)
    REFERENCES `fiscalizacao`.`modelo_templete` (`idMODELO_TEMPLETE`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fiscalizacao`.`pedido_renovacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fiscalizacao`.`pedido_renovacao` (
  `data` INT(11) NOT NULL,
  `motivo` VARCHAR(45) NULL DEFAULT NULL,
  `obs` VARCHAR(45) NULL DEFAULT NULL,
  `OUTORGA_num_proc_apac` INT(11) NOT NULL,
  PRIMARY KEY (`data`),
  INDEX `fk_PEDIDO_RENOVACAO_OUTORGA1_idx` (`OUTORGA_num_proc_apac` ASC),
  CONSTRAINT `fk_PEDIDO_RENOVACAO_OUTORGA1`
    FOREIGN KEY (`OUTORGA_num_proc_apac`)
    REFERENCES `fiscalizacao`.`outorga` (`num_proc_apac`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fiscalizacao`.`tipo_recurso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fiscalizacao`.`tipo_recurso` (
  `codigo` INT(11) NOT NULL,
  `descricao` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`codigo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fiscalizacao`.`recurso_adm`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fiscalizacao`.`recurso_adm` (
  `sequencia` INT(11) NOT NULL,
  `descricao` VARCHAR(45) NULL DEFAULT NULL,
  `destino` VARCHAR(45) NULL DEFAULT NULL,
  `status` VARCHAR(45) NULL DEFAULT NULL,
  `data_entrada` VARCHAR(45) NULL DEFAULT NULL,
  `num_doc_fisico` VARCHAR(45) NULL DEFAULT NULL,
  `TIPO_RECURSO_codigo` INT(11) NOT NULL,
  PRIMARY KEY (`sequencia`),
  INDEX `fk_RECURSO_ADM_TIPO_RECURSO1_idx` (`TIPO_RECURSO_codigo` ASC),
  CONSTRAINT `fk_RECURSO_ADM_TIPO_RECURSO1`
    FOREIGN KEY (`TIPO_RECURSO_codigo`)
    REFERENCES `fiscalizacao`.`tipo_recurso` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fiscalizacao`.`anexo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fiscalizacao`.`anexo` (
  `sequencial` INT(11) NOT NULL,
  `descricao` VARCHAR(45) NULL DEFAULT NULL,
  `arquivo` VARCHAR(45) NULL DEFAULT NULL,
  `data_insercao` VARCHAR(45) NULL DEFAULT NULL,
  `ANEXOcol` VARCHAR(45) NULL DEFAULT NULL,
  `PEDIDO_RENOVACAO_data` INT(11) NOT NULL,
  `RECURSO_ADM_sequencia` INT(11) NOT NULL,
  PRIMARY KEY (`sequencial`, `PEDIDO_RENOVACAO_data`),
  INDEX `fk_ANEXO_PEDIDO_RENOVACAO1_idx` (`PEDIDO_RENOVACAO_data` ASC),
  INDEX `fk_ANEXO_RECURSO_ADM1_idx` (`RECURSO_ADM_sequencia` ASC),
  CONSTRAINT `fk_ANEXO_PEDIDO_RENOVACAO1`
    FOREIGN KEY (`PEDIDO_RENOVACAO_data`)
    REFERENCES `fiscalizacao`.`pedido_renovacao` (`data`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ANEXO_RECURSO_ADM1`
    FOREIGN KEY (`RECURSO_ADM_sequencia`)
    REFERENCES `fiscalizacao`.`recurso_adm` (`sequencia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fiscalizacao`.`status_do_termo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fiscalizacao`.`status_do_termo` (
  `idSTATUS_DO_TERMO` INT(11) NOT NULL,
  `data` DATE NULL DEFAULT NULL,
  `obs` VARCHAR(45) NULL DEFAULT NULL,
  `descricao` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idSTATUS_DO_TERMO`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fiscalizacao`.`termo_de_outorga`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fiscalizacao`.`termo_de_outorga` (
  `sequencial` INT(11) NOT NULL,
  `num_termo` VARCHAR(45) NULL DEFAULT NULL,
  `data_criacao` DATE NULL DEFAULT NULL,
  `data_validade` DATE NULL DEFAULT NULL,
  `OUTORGA_num_proc_apac` INT(11) NOT NULL,
  `STATUS_DO_TERMO_idSTATUS_DO_TERMO` INT(11) NOT NULL,
  PRIMARY KEY (`sequencial`, `OUTORGA_num_proc_apac`),
  INDEX `fk_TERMO_DE_OUTORGA_OUTORGA_idx` (`OUTORGA_num_proc_apac` ASC),
  INDEX `fk_TERMO_DE_OUTORGA_STATUS_DO_TERMO1_idx` (`STATUS_DO_TERMO_idSTATUS_DO_TERMO` ASC),
  CONSTRAINT `fk_TERMO_DE_OUTORGA_OUTORGA`
    FOREIGN KEY (`OUTORGA_num_proc_apac`)
    REFERENCES `fiscalizacao`.`outorga` (`num_proc_apac`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TERMO_DE_OUTORGA_STATUS_DO_TERMO1`
    FOREIGN KEY (`STATUS_DO_TERMO_idSTATUS_DO_TERMO`)
    REFERENCES `fiscalizacao`.`status_do_termo` (`idSTATUS_DO_TERMO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fiscalizacao`.`cobranca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fiscalizacao`.`cobranca` (
  `sequencial` INT(11) NOT NULL,
  `data` DATE NULL DEFAULT NULL,
  `obs` VARCHAR(45) NULL DEFAULT NULL,
  `situacao` VARCHAR(45) NULL DEFAULT NULL,
  `TERMO_DE_OUTORGA_sequencial` INT(11) NOT NULL,
  `TERMO_DE_OUTORGA_OUTORGA_num_proc_apac` INT(11) NOT NULL,
  PRIMARY KEY (`sequencial`),
  INDEX `fk_COBRANCA_TERMO_DE_OUTORGA1_idx` (`TERMO_DE_OUTORGA_sequencial` ASC, `TERMO_DE_OUTORGA_OUTORGA_num_proc_apac` ASC),
  CONSTRAINT `fk_COBRANCA_TERMO_DE_OUTORGA1`
    FOREIGN KEY (`TERMO_DE_OUTORGA_sequencial` , `TERMO_DE_OUTORGA_OUTORGA_num_proc_apac`)
    REFERENCES `fiscalizacao`.`termo_de_outorga` (`sequencial` , `OUTORGA_num_proc_apac`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fiscalizacao`.`condicao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fiscalizacao`.`condicao` (
  `idCONDICAO` INT(11) NOT NULL,
  `descricao` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idCONDICAO`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fiscalizacao`.`demanda_proc_fiscalizacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fiscalizacao`.`demanda_proc_fiscalizacao` (
  `codigo` INT(11) NOT NULL,
  `vistoria` VARCHAR(45) NULL DEFAULT NULL,
  `AUTO_codigo` INT(11) NOT NULL,
  PRIMARY KEY (`codigo`),
  INDEX `fk_DEMANDA_PROC_fiscalizacao_AUTO1_idx` (`AUTO_codigo` ASC),
  CONSTRAINT `fk_DEMANDA_PROC_fiscalizacao_AUTO1`
    FOREIGN KEY (`AUTO_codigo`)
    REFERENCES `fiscalizacao`.`auto` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fiscalizacao`.`fiscal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fiscalizacao`.`fiscal` (
  `cpf` INT(11) NOT NULL,
  `nome` VARCHAR(45) NULL DEFAULT NULL,
  `cod_apac` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`cpf`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fiscalizacao`.`vistoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fiscalizacao`.`vistoria` (
  `codigo` INT(11) NOT NULL,
  `tipo` VARCHAR(45) NULL DEFAULT NULL,
  `obs` VARCHAR(45) NULL DEFAULT NULL,
  `descricao` VARCHAR(45) NULL DEFAULT NULL,
  `data_ocorrencia` DATE NULL DEFAULT NULL,
  `novo_endereco` VARCHAR(45) NULL DEFAULT NULL,
  `motivo` VARCHAR(45) NULL DEFAULT NULL,
  `data_correspondencia` VARCHAR(45) NULL DEFAULT NULL,
  `coordenada_X` VARCHAR(45) NULL DEFAULT NULL,
  `coordenada_y` VARCHAR(45) NULL DEFAULT NULL,
  `flag_endereco_divergente` VARCHAR(45) NULL DEFAULT NULL,
  `AUTO_codigo` INT(11) NOT NULL,
  PRIMARY KEY (`codigo`),
  INDEX `fk_VISTORIA_AUTO1_idx` (`AUTO_codigo` ASC),
  CONSTRAINT `fk_VISTORIA_AUTO1`
    FOREIGN KEY (`AUTO_codigo`)
    REFERENCES `fiscalizacao`.`auto` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fiscalizacao`.`fiscal_vistoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fiscalizacao`.`fiscal_vistoria` (
  `FISCAL_cpf` INT(11) NOT NULL,
  `VISTORIA_codigo` INT(11) NOT NULL,
  PRIMARY KEY (`FISCAL_cpf`, `VISTORIA_codigo`),
  INDEX `fk_FISCAL_VISTORIA_FISCAL1_idx` (`FISCAL_cpf` ASC),
  INDEX `fk_FISCAL_VISTORIA_VISTORIA1_idx` (`VISTORIA_codigo` ASC),
  CONSTRAINT `fk_FISCAL_VISTORIA_FISCAL1`
    FOREIGN KEY (`FISCAL_cpf`)
    REFERENCES `fiscalizacao`.`fiscal` (`cpf`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_FISCAL_VISTORIA_VISTORIA1`
    FOREIGN KEY (`VISTORIA_codigo`)
    REFERENCES `fiscalizacao`.`vistoria` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fiscalizacao`.`parametro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fiscalizacao`.`parametro` (
  `codigo` INT(11) NOT NULL,
  `descricao` VARCHAR(45) NULL DEFAULT NULL,
  `IRREGULARIDADE_codigo` INT(11) NOT NULL,
  PRIMARY KEY (`codigo`),
  INDEX `fk_PARAMETRO_IRREGULARIDADE1_idx` (`IRREGULARIDADE_codigo` ASC),
  CONSTRAINT `fk_PARAMETRO_IRREGULARIDADE1`
    FOREIGN KEY (`IRREGULARIDADE_codigo`)
    REFERENCES `fiscalizacao`.`irregularidade` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fiscalizacao`.`irregularidade_parametro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fiscalizacao`.`irregularidade_parametro` (
  `valor_informado` FLOAT NULL DEFAULT NULL,
  `valor_referencia` FLOAT NULL DEFAULT NULL,
  `PARAMETRO_codigo` INT(11) NOT NULL,
  `IRREGULARIDADE_codigo` INT(11) NOT NULL,
  PRIMARY KEY (`PARAMETRO_codigo`, `IRREGULARIDADE_codigo`),
  INDEX `fk_IRREGULARIDADE_PARAMETRO_PARAMETRO1_idx` (`PARAMETRO_codigo` ASC),
  INDEX `fk_IRREGULARIDADE_PARAMETRO_IRREGULARIDADE1_idx` (`IRREGULARIDADE_codigo` ASC),
  CONSTRAINT `fk_IRREGULARIDADE_PARAMETRO_IRREGULARIDADE1`
    FOREIGN KEY (`IRREGULARIDADE_codigo`)
    REFERENCES `fiscalizacao`.`irregularidade` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_IRREGULARIDADE_PARAMETRO_PARAMETRO1`
    FOREIGN KEY (`PARAMETRO_codigo`)
    REFERENCES `fiscalizacao`.`parametro` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fiscalizacao`.`outorga`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fiscalizacao`.`outorga` (
  `num_proc_apac` INT(10) SIGNED NOT NULL AUTO_INCREMENT,
  `processo_CPRH` VARCHAR(45) NULL DEFAULT NULL,
  `tipo` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`num_proc_apac`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fiscalizacao`.`penalidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fiscalizacao`.`penalidade` (
  `idPENALIDADE` INT(11) NOT NULL,
  `status` VARCHAR(45) NULL DEFAULT NULL,
  `ja_cobrada` VARCHAR(45) NULL DEFAULT NULL,
  `descricao` VARCHAR(45) NULL DEFAULT NULL,
  `valor_multa` VARCHAR(45) NULL DEFAULT NULL,
  `tipo` VARCHAR(45) NULL DEFAULT NULL,
  `data_adiantamento` DATE NULL DEFAULT NULL,
  `data_emissao` DATE NULL DEFAULT NULL,
  `data_recebimento` DATE NULL DEFAULT NULL,
  `PENALIDADEcol` VARCHAR(45) NULL DEFAULT NULL,
  `AUTO_codigo` INT(11) NOT NULL,
  PRIMARY KEY (`idPENALIDADE`),
  INDEX `fk_PENALIDADE_AUTO1_idx` (`AUTO_codigo` ASC),
  CONSTRAINT `fk_PENALIDADE_AUTO1`
    FOREIGN KEY (`AUTO_codigo`)
    REFERENCES `fiscalizacao`.`auto` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fiscalizacao`.`protocolo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fiscalizacao`.`protocolo` (
  `sequencial` INT(11) NOT NULL,
  `data_emissao` DATE NULL DEFAULT NULL,
  `observacao` VARCHAR(45) NULL DEFAULT NULL,
  `TERMO_DE_OUTORGA_sequencial` INT(11) NOT NULL,
  `TERMO_DE_OUTORGA_OUTORGA_num_proc_apac` INT(11) NOT NULL,
  PRIMARY KEY (`sequencial`),
  INDEX `fk_PROTOCOLO_TERMO_DE_OUTORGA1_idx` (`TERMO_DE_OUTORGA_sequencial` ASC, `TERMO_DE_OUTORGA_OUTORGA_num_proc_apac` ASC),
  CONSTRAINT `fk_PROTOCOLO_TERMO_DE_OUTORGA1`
    FOREIGN KEY (`TERMO_DE_OUTORGA_sequencial` , `TERMO_DE_OUTORGA_OUTORGA_num_proc_apac`)
    REFERENCES `fiscalizacao`.`termo_de_outorga` (`sequencial` , `OUTORGA_num_proc_apac`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fiscalizacao`.`relatorio_vistoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fiscalizacao`.`relatorio_vistoria` (
  `sequencia` INT(11) NOT NULL,
  `data_criacao` DATE NULL DEFAULT NULL,
  `titulo` VARCHAR(45) NULL DEFAULT NULL,
  `arquivo` VARCHAR(45) NULL DEFAULT NULL,
  `formato` VARCHAR(45) NULL DEFAULT NULL,
  `num_versao` VARCHAR(45) NULL DEFAULT NULL,
  `VISTORIA_codigo` INT(11) NOT NULL,
  `relatorio_VISTORIAcol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`sequencia`, `relatorio_VISTORIAcol`),
  INDEX `fk_relatorio_VISTORIA_VISTORIA1_idx` (`VISTORIA_codigo` ASC),
  CONSTRAINT `fk_relatorio_VISTORIA_VISTORIA1`
    FOREIGN KEY (`VISTORIA_codigo`)
    REFERENCES `fiscalizacao`.`vistoria` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fiscalizacao`.`secao_template`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fiscalizacao`.`secao_template` (
  `idSECAO_TEMPLATE` INT(11) NOT NULL,
  `nome_secao` VARCHAR(45) NULL DEFAULT NULL,
  `parametro_1` VARCHAR(45) NULL DEFAULT NULL,
  `parametro_2` VARCHAR(45) NULL DEFAULT NULL,
  `parametro_3` VARCHAR(45) NULL DEFAULT NULL,
  `conteudo_secao` VARCHAR(45) NULL DEFAULT NULL,
  `MODELO_TEMPLETE_idMODELO_TEMPLETE` INT(11) NOT NULL,
  PRIMARY KEY (`idSECAO_TEMPLATE`),
  INDEX `fk_SECAO_TEMPLATE_MODELO_TEMPLETE1_idx` (`MODELO_TEMPLETE_idMODELO_TEMPLETE` ASC),
  CONSTRAINT `fk_SECAO_TEMPLATE_MODELO_TEMPLETE1`
    FOREIGN KEY (`MODELO_TEMPLETE_idMODELO_TEMPLETE`)
    REFERENCES `fiscalizacao`.`modelo_templete` (`idMODELO_TEMPLETE`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fiscalizacao`.`termo_de_outorga_irregularidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fiscalizacao`.`termo_de_outorga_irregularidade` (
  `sequencial` INT(11) NOT NULL,
  `TERMO_DE_OUTORGA_sequencial` INT(11) NOT NULL,
  `TERMO_DE_OUTORGA_OUTORGA_num_proc_apac` INT(11) NOT NULL,
  `IRREGULARIDADE_codigo` INT(11) NOT NULL,
  PRIMARY KEY (`sequencial`),
  INDEX `fk_TERMO_DE_OUTORGA_IRREGULARIDADE_TERMO_DE_OUTORGA1_idx` (`TERMO_DE_OUTORGA_sequencial` ASC, `TERMO_DE_OUTORGA_OUTORGA_num_proc_apac` ASC),
  INDEX `fk_TERMO_DE_OUTORGA_IRREGULARIDADE_IRREGULARIDADE1_idx` (`IRREGULARIDADE_codigo` ASC),
  CONSTRAINT `fk_TERMO_DE_OUTORGA_IRREGULARIDADE_IRREGULARIDADE1`
    FOREIGN KEY (`IRREGULARIDADE_codigo`)
    REFERENCES `fiscalizacao`.`irregularidade` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TERMO_DE_OUTORGA_IRREGULARIDADE_TERMO_DE_OUTORGA1`
    FOREIGN KEY (`TERMO_DE_OUTORGA_sequencial` , `TERMO_DE_OUTORGA_OUTORGA_num_proc_apac`)
    REFERENCES `fiscalizacao`.`termo_de_outorga` (`sequencial` , `OUTORGA_num_proc_apac`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`irregularidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`irregularidade` (
  `codigo` INT(11) NOT NULL,
  `descricao` VARCHAR(45) NULL DEFAULT NULL,
  `valor` FLOAT NULL DEFAULT NULL,
  PRIMARY KEY (`codigo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`tipo_auto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`tipo_auto` (
  `codigo` INT(11) NOT NULL,
  `descricao` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`codigo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`auto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`auto` (
  `codigo` INT(11) NOT NULL,
  `data_emissao` DATE NULL DEFAULT NULL,
  `obs` VARCHAR(45) NULL DEFAULT NULL,
  `matricula` VARCHAR(45) NULL DEFAULT NULL,
  `IRREGULARIDADE_codigo` INT(11) NOT NULL,
  `TIPO_AUTO_codigo` INT(11) NOT NULL,
  PRIMARY KEY (`codigo`),
  INDEX `fk_AUTO_IRREGULARIDADE1_idx` (`IRREGULARIDADE_codigo` ASC),
  INDEX `fk_AUTO_TIPO_AUTO1_idx` (`TIPO_AUTO_codigo` ASC),
  CONSTRAINT `fk_AUTO_IRREGULARIDADE1`
    FOREIGN KEY (`IRREGULARIDADE_codigo`)
    REFERENCES `mydb`.`irregularidade` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_AUTO_TIPO_AUTO1`
    FOREIGN KEY (`TIPO_AUTO_codigo`)
    REFERENCES `mydb`.`tipo_auto` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`modelo_templete`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`modelo_templete` (
  `idMODELO_TEMPLETE` INT(11) NOT NULL,
  `nome` VARCHAR(45) NULL DEFAULT NULL,
  `cabecalho_linha_1` VARCHAR(45) NULL DEFAULT NULL,
  `cabecalho_linha_2` VARCHAR(45) NULL DEFAULT NULL,
  `cabecalho_linha_3` VARCHAR(45) NULL DEFAULT NULL,
  `TIPO_AUTO_codigo` INT(11) NOT NULL,
  PRIMARY KEY (`idMODELO_TEMPLETE`),
  INDEX `fk_MODELO_TEMPLETE_TIPO_AUTO1_idx` (`TIPO_AUTO_codigo` ASC),
  CONSTRAINT `fk_MODELO_TEMPLETE_TIPO_AUTO1`
    FOREIGN KEY (`TIPO_AUTO_codigo`)
    REFERENCES `mydb`.`tipo_auto` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`advertencia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`advertencia` (
  `sequencial` INT(11) NOT NULL,
  `obs` VARCHAR(45) NULL DEFAULT NULL,
  `tipo` VARCHAR(45) NULL DEFAULT NULL,
  `descricao` VARCHAR(45) NULL DEFAULT NULL,
  `AUTO_codigo` INT(11) NOT NULL,
  `MODELO_TEMPLETE_idMODELO_TEMPLETE` INT(11) NOT NULL,
  PRIMARY KEY (`sequencial`, `AUTO_codigo`),
  INDEX `fk_ADVERTENCIA_AUTO1_idx` (`AUTO_codigo` ASC),
  INDEX `fk_ADVERTENCIA_MODELO_TEMPLETE1_idx` (`MODELO_TEMPLETE_idMODELO_TEMPLETE` ASC),
  CONSTRAINT `fk_ADVERTENCIA_AUTO1`
    FOREIGN KEY (`AUTO_codigo`)
    REFERENCES `mydb`.`auto` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ADVERTENCIA_MODELO_TEMPLETE1`
    FOREIGN KEY (`MODELO_TEMPLETE_idMODELO_TEMPLETE`)
    REFERENCES `mydb`.`modelo_templete` (`idMODELO_TEMPLETE`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`outorga`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`outorga` (
  `num_proc_apac` INT(11) NOT NULL AUTO_INCREMENT,
  `processo_CPRH` VARCHAR(45) NULL DEFAULT NULL,
  `tipo` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`num_proc_apac`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`pedido_renovacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`pedido_renovacao` (
  `data` INT(11) NOT NULL,
  `motivo` VARCHAR(45) NULL DEFAULT NULL,
  `obs` VARCHAR(45) NULL DEFAULT NULL,
  `OUTORGA_num_proc_apac` INT(11) NOT NULL,
  PRIMARY KEY (`data`),
  INDEX `fk_PEDIDO_RENOVACAO_OUTORGA1_idx` (`OUTORGA_num_proc_apac` ASC),
  CONSTRAINT `fk_PEDIDO_RENOVACAO_OUTORGA1`
    FOREIGN KEY (`OUTORGA_num_proc_apac`)
    REFERENCES `mydb`.`outorga` (`num_proc_apac`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`tipo_recurso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`tipo_recurso` (
  `codigo` INT(11) NOT NULL,
  `descricao` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`codigo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`recurso_adm`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`recurso_adm` (
  `sequencia` INT(11) NOT NULL,
  `descricao` VARCHAR(45) NULL DEFAULT NULL,
  `destino` VARCHAR(45) NULL DEFAULT NULL,
  `status` VARCHAR(45) NULL DEFAULT NULL,
  `data_entrada` VARCHAR(45) NULL DEFAULT NULL,
  `num_doc_fisico` VARCHAR(45) NULL DEFAULT NULL,
  `TIPO_RECURSO_codigo` INT(11) NOT NULL,
  PRIMARY KEY (`sequencia`),
  INDEX `fk_RECURSO_ADM_TIPO_RECURSO1_idx` (`TIPO_RECURSO_codigo` ASC),
  CONSTRAINT `fk_RECURSO_ADM_TIPO_RECURSO1`
    FOREIGN KEY (`TIPO_RECURSO_codigo`)
    REFERENCES `mydb`.`tipo_recurso` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`anexo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`anexo` (
  `sequencial` INT(11) NOT NULL,
  `descricao` VARCHAR(45) NULL DEFAULT NULL,
  `arquivo` VARCHAR(45) NULL DEFAULT NULL,
  `data_insercao` VARCHAR(45) NULL DEFAULT NULL,
  `ANEXOcol` VARCHAR(45) NULL DEFAULT NULL,
  `PEDIDO_RENOVACAO_data` INT(11) NOT NULL,
  `RECURSO_ADM_sequencia` INT(11) NOT NULL,
  PRIMARY KEY (`sequencial`, `PEDIDO_RENOVACAO_data`),
  INDEX `fk_ANEXO_PEDIDO_RENOVACAO1_idx` (`PEDIDO_RENOVACAO_data` ASC),
  INDEX `fk_ANEXO_RECURSO_ADM1_idx` (`RECURSO_ADM_sequencia` ASC),
  CONSTRAINT `fk_ANEXO_PEDIDO_RENOVACAO1`
    FOREIGN KEY (`PEDIDO_RENOVACAO_data`)
    REFERENCES `mydb`.`pedido_renovacao` (`data`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ANEXO_RECURSO_ADM1`
    FOREIGN KEY (`RECURSO_ADM_sequencia`)
    REFERENCES `mydb`.`recurso_adm` (`sequencia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`status_do_termo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`status_do_termo` (
  `idSTATUS_DO_TERMO` INT(11) NOT NULL,
  `data` DATE NULL DEFAULT NULL,
  `obs` VARCHAR(45) NULL DEFAULT NULL,
  `descricao` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idSTATUS_DO_TERMO`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`termo_de_outorga`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`termo_de_outorga` (
  `sequencial` INT(11) NOT NULL,
  `num_termo` VARCHAR(45) NULL DEFAULT NULL,
  `data_criacao` DATE NULL DEFAULT NULL,
  `data_validade` DATE NULL DEFAULT NULL,
  `OUTORGA_num_proc_apac` INT(11) NOT NULL,
  `STATUS_DO_TERMO_idSTATUS_DO_TERMO` INT(11) NOT NULL,
  PRIMARY KEY (`sequencial`, `OUTORGA_num_proc_apac`),
  INDEX `fk_TERMO_DE_OUTORGA_OUTORGA_idx` (`OUTORGA_num_proc_apac` ASC),
  INDEX `fk_TERMO_DE_OUTORGA_STATUS_DO_TERMO1_idx` (`STATUS_DO_TERMO_idSTATUS_DO_TERMO` ASC),
  CONSTRAINT `fk_TERMO_DE_OUTORGA_OUTORGA`
    FOREIGN KEY (`OUTORGA_num_proc_apac`)
    REFERENCES `mydb`.`outorga` (`num_proc_apac`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TERMO_DE_OUTORGA_STATUS_DO_TERMO1`
    FOREIGN KEY (`STATUS_DO_TERMO_idSTATUS_DO_TERMO`)
    REFERENCES `mydb`.`status_do_termo` (`idSTATUS_DO_TERMO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`cobranca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`cobranca` (
  `sequencial` INT(11) NOT NULL,
  `data` DATE NULL DEFAULT NULL,
  `obs` VARCHAR(45) NULL DEFAULT NULL,
  `situacao` VARCHAR(45) NULL DEFAULT NULL,
  `TERMO_DE_OUTORGA_sequencial` INT(11) NOT NULL,
  `TERMO_DE_OUTORGA_OUTORGA_num_proc_apac` INT(11) NOT NULL,
  PRIMARY KEY (`sequencial`),
  INDEX `fk_COBRANCA_TERMO_DE_OUTORGA1_idx` (`TERMO_DE_OUTORGA_sequencial` ASC, `TERMO_DE_OUTORGA_OUTORGA_num_proc_apac` ASC),
  CONSTRAINT `fk_COBRANCA_TERMO_DE_OUTORGA1`
    FOREIGN KEY (`TERMO_DE_OUTORGA_sequencial` , `TERMO_DE_OUTORGA_OUTORGA_num_proc_apac`)
    REFERENCES `mydb`.`termo_de_outorga` (`sequencial` , `OUTORGA_num_proc_apac`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`condicao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`condicao` (
  `idCONDICAO` INT(11) NOT NULL,
  `descricao` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idCONDICAO`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`demanda_proc_fiscalizacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`demanda_proc_fiscalizacao` (
  `codigo` INT(11) NOT NULL,
  `vistoria` VARCHAR(45) NULL DEFAULT NULL,
  `AUTO_codigo` INT(11) NOT NULL,
  PRIMARY KEY (`codigo`),
  INDEX `fk_DEMANDA_PROC_fiscalizacao_AUTO1_idx` (`AUTO_codigo` ASC),
  CONSTRAINT `fk_DEMANDA_PROC_fiscalizacao_AUTO1`
    FOREIGN KEY (`AUTO_codigo`)
    REFERENCES `mydb`.`auto` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`fiscal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`fiscal` (
  `cpf` INT(11) NOT NULL,
  `nome` VARCHAR(45) NULL DEFAULT NULL,
  `cod_apac` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`cpf`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`vistoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vistoria` (
  `codigo` INT(11) NOT NULL,
  `tipo` VARCHAR(45) NULL DEFAULT NULL,
  `obs` VARCHAR(45) NULL DEFAULT NULL,
  `descricao` VARCHAR(45) NULL DEFAULT NULL,
  `data_ocorrencia` DATE NULL DEFAULT NULL,
  `novo_endereco` VARCHAR(45) NULL DEFAULT NULL,
  `motivo` VARCHAR(45) NULL DEFAULT NULL,
  `data_correspondencia` VARCHAR(45) NULL DEFAULT NULL,
  `coordenada_X` VARCHAR(45) NULL DEFAULT NULL,
  `coordenada_y` VARCHAR(45) NULL DEFAULT NULL,
  `flag_endereco_divergente` VARCHAR(45) NULL DEFAULT NULL,
  `AUTO_codigo` INT(11) NOT NULL,
  PRIMARY KEY (`codigo`),
  INDEX `fk_VISTORIA_AUTO1_idx` (`AUTO_codigo` ASC),
  CONSTRAINT `fk_VISTORIA_AUTO1`
    FOREIGN KEY (`AUTO_codigo`)
    REFERENCES `mydb`.`auto` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`fiscal_vistoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`fiscal_vistoria` (
  `FISCAL_cpf` INT(11) NOT NULL,
  `VISTORIA_codigo` INT(11) NOT NULL,
  PRIMARY KEY (`FISCAL_cpf`, `VISTORIA_codigo`),
  INDEX `fk_FISCAL_VISTORIA_FISCAL1_idx` (`FISCAL_cpf` ASC),
  INDEX `fk_FISCAL_VISTORIA_VISTORIA1_idx` (`VISTORIA_codigo` ASC),
  CONSTRAINT `fk_FISCAL_VISTORIA_FISCAL1`
    FOREIGN KEY (`FISCAL_cpf`)
    REFERENCES `mydb`.`fiscal` (`cpf`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_FISCAL_VISTORIA_VISTORIA1`
    FOREIGN KEY (`VISTORIA_codigo`)
    REFERENCES `mydb`.`vistoria` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`parametro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`parametro` (
  `codigo` INT(11) NOT NULL,
  `descricao` VARCHAR(45) NULL DEFAULT NULL,
  `IRREGULARIDADE_codigo` INT(11) NOT NULL,
  PRIMARY KEY (`codigo`),
  INDEX `fk_PARAMETRO_IRREGULARIDADE1_idx` (`IRREGULARIDADE_codigo` ASC),
  CONSTRAINT `fk_PARAMETRO_IRREGULARIDADE1`
    FOREIGN KEY (`IRREGULARIDADE_codigo`)
    REFERENCES `mydb`.`irregularidade` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`irregularidade_parametro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`irregularidade_parametro` (
  `valor_informado` FLOAT NULL DEFAULT NULL,
  `valor_referencia` FLOAT NULL DEFAULT NULL,
  `PARAMETRO_codigo` INT(11) NOT NULL,
  `IRREGULARIDADE_codigo` INT(11) NOT NULL,
  PRIMARY KEY (`PARAMETRO_codigo`, `IRREGULARIDADE_codigo`),
  INDEX `fk_IRREGULARIDADE_PARAMETRO_PARAMETRO1_idx` (`PARAMETRO_codigo` ASC),
  INDEX `fk_IRREGULARIDADE_PARAMETRO_IRREGULARIDADE1_idx` (`IRREGULARIDADE_codigo` ASC),
  CONSTRAINT `fk_IRREGULARIDADE_PARAMETRO_IRREGULARIDADE1`
    FOREIGN KEY (`IRREGULARIDADE_codigo`)
    REFERENCES `mydb`.`irregularidade` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_IRREGULARIDADE_PARAMETRO_PARAMETRO1`
    FOREIGN KEY (`PARAMETRO_codigo`)
    REFERENCES `mydb`.`parametro` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`penalidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`penalidade` (
  `idPENALIDADE` INT(11) NOT NULL,
  `status` VARCHAR(45) NULL DEFAULT NULL,
  `ja_cobrada` VARCHAR(45) NULL DEFAULT NULL,
  `descricao` VARCHAR(45) NULL DEFAULT NULL,
  `valor_multa` VARCHAR(45) NULL DEFAULT NULL,
  `tipo` VARCHAR(45) NULL DEFAULT NULL,
  `data_adiantamento` DATE NULL DEFAULT NULL,
  `data_emissao` DATE NULL DEFAULT NULL,
  `data_recebimento` DATE NULL DEFAULT NULL,
  `PENALIDADEcol` VARCHAR(45) NULL DEFAULT NULL,
  `AUTO_codigo` INT(11) NOT NULL,
  PRIMARY KEY (`idPENALIDADE`),
  INDEX `fk_PENALIDADE_AUTO1_idx` (`AUTO_codigo` ASC),
  CONSTRAINT `fk_PENALIDADE_AUTO1`
    FOREIGN KEY (`AUTO_codigo`)
    REFERENCES `mydb`.`auto` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`protocolo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`protocolo` (
  `sequencial` INT(11) NOT NULL,
  `data_emissao` DATE NULL DEFAULT NULL,
  `observacao` VARCHAR(45) NULL DEFAULT NULL,
  `TERMO_DE_OUTORGA_sequencial` INT(11) NOT NULL,
  `TERMO_DE_OUTORGA_OUTORGA_num_proc_apac` INT(11) NOT NULL,
  PRIMARY KEY (`sequencial`),
  INDEX `fk_PROTOCOLO_TERMO_DE_OUTORGA1_idx` (`TERMO_DE_OUTORGA_sequencial` ASC, `TERMO_DE_OUTORGA_OUTORGA_num_proc_apac` ASC),
  CONSTRAINT `fk_PROTOCOLO_TERMO_DE_OUTORGA1`
    FOREIGN KEY (`TERMO_DE_OUTORGA_sequencial` , `TERMO_DE_OUTORGA_OUTORGA_num_proc_apac`)
    REFERENCES `mydb`.`termo_de_outorga` (`sequencial` , `OUTORGA_num_proc_apac`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`relatorio_vistoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`relatorio_vistoria` (
  `sequencia` INT(11) NOT NULL,
  `data_criacao` DATE NULL DEFAULT NULL,
  `titulo` VARCHAR(45) NULL DEFAULT NULL,
  `arquivo` VARCHAR(45) NULL DEFAULT NULL,
  `formato` VARCHAR(45) NULL DEFAULT NULL,
  `num_versao` VARCHAR(45) NULL DEFAULT NULL,
  `VISTORIA_codigo` INT(11) NOT NULL,
  `relatorio_VISTORIAcol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`sequencia`, `relatorio_VISTORIAcol`),
  INDEX `fk_relatorio_VISTORIA_VISTORIA1_idx` (`VISTORIA_codigo` ASC),
  CONSTRAINT `fk_relatorio_VISTORIA_VISTORIA1`
    FOREIGN KEY (`VISTORIA_codigo`)
    REFERENCES `mydb`.`vistoria` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`secao_template`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`secao_template` (
  `idSECAO_TEMPLATE` INT(11) NOT NULL,
  `nome_secao` VARCHAR(45) NULL DEFAULT NULL,
  `parametro_1` VARCHAR(45) NULL DEFAULT NULL,
  `parametro_2` VARCHAR(45) NULL DEFAULT NULL,
  `parametro_3` VARCHAR(45) NULL DEFAULT NULL,
  `conteudo_secao` VARCHAR(45) NULL DEFAULT NULL,
  `MODELO_TEMPLETE_idMODELO_TEMPLETE` INT(11) NOT NULL,
  PRIMARY KEY (`idSECAO_TEMPLATE`),
  INDEX `fk_SECAO_TEMPLATE_MODELO_TEMPLETE1_idx` (`MODELO_TEMPLETE_idMODELO_TEMPLETE` ASC),
  CONSTRAINT `fk_SECAO_TEMPLATE_MODELO_TEMPLETE1`
    FOREIGN KEY (`MODELO_TEMPLETE_idMODELO_TEMPLETE`)
    REFERENCES `mydb`.`modelo_templete` (`idMODELO_TEMPLETE`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`termo_de_outorga_irregularidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`termo_de_outorga_irregularidade` (
  `sequencial` INT(11) NOT NULL,
  `TERMO_DE_OUTORGA_sequencial` INT(11) NOT NULL,
  `TERMO_DE_OUTORGA_OUTORGA_num_proc_apac` INT(11) NOT NULL,
  `IRREGULARIDADE_codigo` INT(11) NOT NULL,
  PRIMARY KEY (`sequencial`),
  INDEX `fk_TERMO_DE_OUTORGA_IRREGULARIDADE_TERMO_DE_OUTORGA1_idx` (`TERMO_DE_OUTORGA_sequencial` ASC, `TERMO_DE_OUTORGA_OUTORGA_num_proc_apac` ASC),
  INDEX `fk_TERMO_DE_OUTORGA_IRREGULARIDADE_IRREGULARIDADE1_idx` (`IRREGULARIDADE_codigo` ASC),
  CONSTRAINT `fk_TERMO_DE_OUTORGA_IRREGULARIDADE_IRREGULARIDADE1`
    FOREIGN KEY (`IRREGULARIDADE_codigo`)
    REFERENCES `mydb`.`irregularidade` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TERMO_DE_OUTORGA_IRREGULARIDADE_TERMO_DE_OUTORGA1`
    FOREIGN KEY (`TERMO_DE_OUTORGA_sequencial` , `TERMO_DE_OUTORGA_OUTORGA_num_proc_apac`)
    REFERENCES `mydb`.`termo_de_outorga` (`sequencial` , `OUTORGA_num_proc_apac`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
