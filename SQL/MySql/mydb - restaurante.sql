-- MySQL Script generated by MySQL Workbench
-- Fri Jun 30 12:09:24 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Restaurante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Restaurante` (
  `idRestaurante` INT NOT NULL,
  `NombreRestaurante` VARCHAR(45) NOT NULL,
  `DireccionRestaurante` VARCHAR(45) NOT NULL,
  `TelefonoRestaurante` VARCHAR(45) NOT NULL,
  `HorarioApertura` TIME NOT NULL,
  `HorarioCierre` TIME NOT NULL,
  PRIMARY KEY (`idRestaurante`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Empleado` (
  `idEmpleado` INT NOT NULL,
  `NombreEmpleado` VARCHAR(45) NOT NULL,
  `PosicionEmpleado` VARCHAR(45) NOT NULL,
  `SalarioEmpleado` VARCHAR(45) NOT NULL,
  `FechaContratacionEmpleado` DATE NOT NULL,
  `idPedido` VARCHAR(45) NULL,
  `idCliente` VARCHAR(45) NULL,
  `Empleadocol` VARCHAR(45) NULL,
  `Restaurante_idRestaurante` INT NOT NULL,
  PRIMARY KEY (`idEmpleado`, `Restaurante_idRestaurante`),
  INDEX `fk_Empleado_Restaurante1_idx` (`Restaurante_idRestaurante` ASC) VISIBLE,
  CONSTRAINT `fk_Empleado_Restaurante1`
    FOREIGN KEY (`Restaurante_idRestaurante`)
    REFERENCES `mydb`.`Restaurante` (`idRestaurante`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cliente` (
  `idCliente` INT NOT NULL,
  `NombreCliente` VARCHAR(45) NOT NULL,
  `DireccionCliente` VARCHAR(45) NOT NULL,
  `TelefonoCliente` VARCHAR(45) NOT NULL,
  `CorreoCliente` VARCHAR(45) NOT NULL,
  `idPedido` VARCHAR(45) NOT NULL,
  `idMesa` VARCHAR(45) NOT NULL,
  `Restaurante_idRestaurante` INT NOT NULL,
  `Empleado_idEmpleado` INT NOT NULL,
  PRIMARY KEY (`idCliente`),
  INDEX `fk_Cliente_Restaurante1_idx` (`Restaurante_idRestaurante` ASC) VISIBLE,
  INDEX `fk_Cliente_Empleado1_idx` (`Empleado_idEmpleado` ASC) VISIBLE,
  CONSTRAINT `fk_Cliente_Restaurante1`
    FOREIGN KEY (`Restaurante_idRestaurante`)
    REFERENCES `mydb`.`Restaurante` (`idRestaurante`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cliente_Empleado1`
    FOREIGN KEY (`Empleado_idEmpleado`)
    REFERENCES `mydb`.`Empleado` (`idEmpleado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Pedido` (
  `idPedido` INT NOT NULL,
  `FechaHora` DATE NOT NULL,
  `EstadoPedido` VARCHAR(45) NOT NULL,
  `Total` DECIMAL(50) NOT NULL,
  `Restaurante_idRestaurante` INT NOT NULL,
  `Cliente_idCliente` INT NOT NULL,
  `Empleado_idEmpleado` INT NOT NULL,
  PRIMARY KEY (`idPedido`),
  INDEX `fk_Pedido_Restaurante1_idx` (`Restaurante_idRestaurante` ASC) VISIBLE,
  INDEX `fk_Pedido_Cliente1_idx` (`Cliente_idCliente` ASC) VISIBLE,
  INDEX `fk_Pedido_Empleado1_idx` (`Empleado_idEmpleado` ASC) VISIBLE,
  CONSTRAINT `fk_Pedido_Restaurante1`
    FOREIGN KEY (`Restaurante_idRestaurante`)
    REFERENCES `mydb`.`Restaurante` (`idRestaurante`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pedido_Cliente1`
    FOREIGN KEY (`Cliente_idCliente`)
    REFERENCES `mydb`.`Cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pedido_Empleado1`
    FOREIGN KEY (`Empleado_idEmpleado`)
    REFERENCES `mydb`.`Empleado` (`idEmpleado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Producto` (
  `idProducto` INT NOT NULL,
  `NombreProducto` VARCHAR(45) NOT NULL,
  `Descripcion` VARCHAR(45) NOT NULL,
  `Precio` DECIMAL(50) NOT NULL,
  `Restaurante_idRestaurante` INT NOT NULL,
  `Pedido_idPedido` INT NOT NULL,
  PRIMARY KEY (`idProducto`),
  INDEX `fk_Producto_Restaurante1_idx` (`Restaurante_idRestaurante` ASC) VISIBLE,
  INDEX `fk_Producto_Pedido1_idx` (`Pedido_idPedido` ASC) VISIBLE,
  CONSTRAINT `fk_Producto_Restaurante1`
    FOREIGN KEY (`Restaurante_idRestaurante`)
    REFERENCES `mydb`.`Restaurante` (`idRestaurante`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Producto_Pedido1`
    FOREIGN KEY (`Pedido_idPedido`)
    REFERENCES `mydb`.`Pedido` (`idPedido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Mesa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Mesa` (
  `idMesa` INT NOT NULL,
  `Capacidad` INT NOT NULL,
  `Ubicacion` VARCHAR(45) NOT NULL,
  `Cliente_idCliente` INT NOT NULL,
  `Restaurante_idRestaurante` INT NOT NULL,
  PRIMARY KEY (`idMesa`, `Cliente_idCliente`, `Restaurante_idRestaurante`),
  INDEX `fk_Mesa_Cliente1_idx` (`Cliente_idCliente` ASC) VISIBLE,
  INDEX `fk_Mesa_Restaurante1_idx` (`Restaurante_idRestaurante` ASC) VISIBLE,
  CONSTRAINT `fk_Mesa_Cliente1`
    FOREIGN KEY (`Cliente_idCliente`)
    REFERENCES `mydb`.`Cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Mesa_Restaurante1`
    FOREIGN KEY (`Restaurante_idRestaurante`)
    REFERENCES `mydb`.`Restaurante` (`idRestaurante`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;