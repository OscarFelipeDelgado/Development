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
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8mb3 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`restaurante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`restaurante` (
  `idRestaurante` INT NOT NULL,
  `NombreRestaurante` VARCHAR(45) NOT NULL,
  `DireccionRestaurante` VARCHAR(45) NOT NULL,
  `TelefonoRestaurante` VARCHAR(45) NOT NULL,
  `HorarioApertura` TIME NOT NULL,
  `HorarioCierre` TIME NOT NULL,
  PRIMARY KEY (`idRestaurante`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`empleado` (
  `idEmpleado` INT NOT NULL,
  `NombreEmpleado` VARCHAR(45) NOT NULL,
  `PosicionEmpleado` VARCHAR(45) NOT NULL,
  `SalarioEmpleado` VARCHAR(45) NOT NULL,
  `FechaContratacionEmpleado` DATE NOT NULL,
  `idPedido` VARCHAR(45) NULL DEFAULT NULL,
  `idCliente` VARCHAR(45) NULL DEFAULT NULL,
  `Empleadocol` VARCHAR(45) NULL DEFAULT NULL,
  `Restaurante_idRestaurante` INT NOT NULL,
  PRIMARY KEY (`idEmpleado`, `Restaurante_idRestaurante`),
  INDEX `fk_Empleado_Restaurante1_idx` (`Restaurante_idRestaurante` ASC) VISIBLE,
  CONSTRAINT `fk_Empleado_Restaurante1`
    FOREIGN KEY (`Restaurante_idRestaurante`)
    REFERENCES `mydb`.`restaurante` (`idRestaurante`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`cliente` (
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
  CONSTRAINT `fk_Cliente_Empleado1`
    FOREIGN KEY (`Empleado_idEmpleado`)
    REFERENCES `mydb`.`empleado` (`idEmpleado`),
  CONSTRAINT `fk_Cliente_Restaurante1`
    FOREIGN KEY (`Restaurante_idRestaurante`)
    REFERENCES `mydb`.`restaurante` (`idRestaurante`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`estudiante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`estudiante` (
  `idEstudiante` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `edad` INT NOT NULL,
  `direccion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idEstudiante`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`materia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`materia` (
  `idMateria` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `numero de creditos` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idMateria`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`inscripción`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`inscripción` (
  `idInscripción` INT NOT NULL,
  `fecha de inscripcion` VARCHAR(45) NOT NULL,
  `Materia_idMateria` INT NOT NULL,
  `Estudiante_idEstudiante` INT NOT NULL,
  PRIMARY KEY (`idInscripción`),
  INDEX `fk_Inscripción_Materia_idx` (`Materia_idMateria` ASC) INVISIBLE,
  INDEX `fk_Inscripción_Estudiante_idx` (`Estudiante_idEstudiante` ASC) VISIBLE,
  CONSTRAINT `fk_Inscripción_Estudiante`
    FOREIGN KEY (`Estudiante_idEstudiante`)
    REFERENCES `mydb`.`estudiante` (`idEstudiante`),
  CONSTRAINT `fk_Inscripción_Materia`
    FOREIGN KEY (`Materia_idMateria`)
    REFERENCES `mydb`.`materia` (`idMateria`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`mesa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`mesa` (
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
    REFERENCES `mydb`.`cliente` (`idCliente`),
  CONSTRAINT `fk_Mesa_Restaurante1`
    FOREIGN KEY (`Restaurante_idRestaurante`)
    REFERENCES `mydb`.`restaurante` (`idRestaurante`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`pedido` (
  `idPedido` INT NOT NULL,
  `FechaHora` DATE NOT NULL,
  `EstadoPedido` VARCHAR(45) NOT NULL,
  `Total` DECIMAL(50,0) NOT NULL,
  `Restaurante_idRestaurante` INT NOT NULL,
  `Cliente_idCliente` INT NOT NULL,
  `Empleado_idEmpleado` INT NOT NULL,
  PRIMARY KEY (`idPedido`),
  INDEX `fk_Pedido_Restaurante1_idx` (`Restaurante_idRestaurante` ASC) VISIBLE,
  INDEX `fk_Pedido_Cliente1_idx` (`Cliente_idCliente` ASC) VISIBLE,
  INDEX `fk_Pedido_Empleado1_idx` (`Empleado_idEmpleado` ASC) VISIBLE,
  CONSTRAINT `fk_Pedido_Cliente1`
    FOREIGN KEY (`Cliente_idCliente`)
    REFERENCES `mydb`.`cliente` (`idCliente`),
  CONSTRAINT `fk_Pedido_Empleado1`
    FOREIGN KEY (`Empleado_idEmpleado`)
    REFERENCES `mydb`.`empleado` (`idEmpleado`),
  CONSTRAINT `fk_Pedido_Restaurante1`
    FOREIGN KEY (`Restaurante_idRestaurante`)
    REFERENCES `mydb`.`restaurante` (`idRestaurante`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`producto` (
  `idProducto` INT NOT NULL,
  `NombreProducto` VARCHAR(45) NOT NULL,
  `Descripcion` VARCHAR(45) NOT NULL,
  `Precio` DECIMAL(50,0) NOT NULL,
  `Restaurante_idRestaurante` INT NOT NULL,
  `Pedido_idPedido` INT NOT NULL,
  PRIMARY KEY (`idProducto`),
  INDEX `fk_Producto_Restaurante1_idx` (`Restaurante_idRestaurante` ASC) VISIBLE,
  INDEX `fk_Producto_Pedido1_idx` (`Pedido_idPedido` ASC) VISIBLE,
  CONSTRAINT `fk_Producto_Pedido1`
    FOREIGN KEY (`Pedido_idPedido`)
    REFERENCES `mydb`.`pedido` (`idPedido`),
  CONSTRAINT `fk_Producto_Restaurante1`
    FOREIGN KEY (`Restaurante_idRestaurante`)
    REFERENCES `mydb`.`restaurante` (`idRestaurante`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`Estudiante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Estudiante` (
  `idEstudiante` INT NOT NULL,
  PRIMARY KEY (`idEstudiante`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Materia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Materia` (
  `idMateria` INT NOT NULL,
  PRIMARY KEY (`idMateria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Inscripcion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Inscripcion` (
  `idInscripcion` INT NOT NULL,
  `Estudiante_idEstudiante` INT NOT NULL,
  `Materia_idMateria` INT NOT NULL,
  PRIMARY KEY (`idInscripcion`),
  INDEX `fk_Inscripcion_Estudiante1_idx` (`Estudiante_idEstudiante` ASC) VISIBLE,
  INDEX `fk_Inscripcion_Materia1_idx` (`Materia_idMateria` ASC) VISIBLE,
  CONSTRAINT `fk_Inscripcion_Estudiante1`
    FOREIGN KEY (`Estudiante_idEstudiante`)
    REFERENCES `mydb`.`Estudiante` (`idEstudiante`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Inscripcion_Materia1`
    FOREIGN KEY (`Materia_idMateria`)
    REFERENCES `mydb`.`Materia` (`idMateria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
