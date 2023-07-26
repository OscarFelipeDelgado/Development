-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema dinamita
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dinamita
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dinamita` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `dinamita` ;

-- -----------------------------------------------------
-- Table `dinamita`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dinamita`.`users` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` INT UNSIGNED NULL DEFAULT NULL,
  `name` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `avatar` VARCHAR(255) NULL DEFAULT 'users/default.png',
  `email_verified_at` TIMESTAMP NULL DEFAULT NULL,
  `password` VARCHAR(255) NOT NULL,
  `remember_token` VARCHAR(100) NULL DEFAULT NULL,
  `settings` TEXT NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `users_email_unique` (`email` ASC) VISIBLE,
  INDEX `users_role_id_foreign` (`role_id` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `dinamita`.`orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dinamita`.`orders` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_number` VARCHAR(255) NOT NULL,
  `user_id` INT UNSIGNED NOT NULL,
  `status` ENUM('pending', 'processing', 'completed', 'decline') NOT NULL DEFAULT 'pending',
  `grand_total` DOUBLE(8,2) NOT NULL,
  `item_count` INT NOT NULL,
  `is_paid` TINYINT(1) NOT NULL DEFAULT '0',
  `payment_method` ENUM('cash_on_delivery', 'paypal', 'stripe', 'card') NOT NULL DEFAULT 'cash_on_delivery',
  `shipping_fullname` VARCHAR(255) NOT NULL,
  `shipping_address` VARCHAR(255) NOT NULL,
  `shipping_city` VARCHAR(255) NOT NULL,
  `shipping_state` VARCHAR(255) NOT NULL,
  `shipping_zipcode` VARCHAR(255) NOT NULL,
  `shipping_phone` VARCHAR(255) NOT NULL,
  `notes` VARCHAR(255) NULL DEFAULT NULL,
  `billing_fullname` VARCHAR(255) NOT NULL,
  `billing_address` VARCHAR(255) NOT NULL,
  `billing_city` VARCHAR(255) NOT NULL,
  `billing_state` VARCHAR(255) NOT NULL,
  `billing_zipcode` VARCHAR(255) NOT NULL,
  `billing_phone` VARCHAR(255) NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `orders_user_id_foreign` (`user_id` ASC) VISIBLE,
  CONSTRAINT `orders_user_id_foreign`
    FOREIGN KEY (`user_id`)
    REFERENCES `dinamita`.`users` (`id`)
    ON DELETE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `dinamita`.`shops`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dinamita`.`shops` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `user_id` INT UNSIGNED NOT NULL,
  `is_active` TINYINT(1) NOT NULL DEFAULT '0',
  `description` TEXT NULL DEFAULT NULL,
  `rating` DOUBLE(8,2) NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `shops_user_id_foreign` (`user_id` ASC) VISIBLE,
  CONSTRAINT `shops_user_id_foreign`
    FOREIGN KEY (`user_id`)
    REFERENCES `dinamita`.`users` (`id`)
    ON DELETE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `dinamita`.`products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dinamita`.`products` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `description` VARCHAR(255) NOT NULL,
  `price` DOUBLE(8,2) NOT NULL,
  `cover_img` VARCHAR(255) NULL DEFAULT NULL,
  `shop_id` INT UNSIGNED NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `products_shop_id_foreign` (`shop_id` ASC) VISIBLE,
  CONSTRAINT `products_shop_id_foreign`
    FOREIGN KEY (`shop_id`)
    REFERENCES `dinamita`.`shops` (`id`)
    ON DELETE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 51
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `dinamita`.`order_items`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dinamita`.`order_items` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` INT UNSIGNED NOT NULL,
  `product_id` INT UNSIGNED NOT NULL,
  `price` DOUBLE(8,2) NOT NULL,
  `quantity` INT NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `order_items_product_id_foreign` (`product_id` ASC) VISIBLE,
  INDEX `order_items_order_id_foreign` (`order_id` ASC) VISIBLE,
  CONSTRAINT `order_items_order_id_foreign`
    FOREIGN KEY (`order_id`)
    REFERENCES `dinamita`.`orders` (`id`)
    ON DELETE CASCADE,
  CONSTRAINT `order_items_product_id_foreign`
    FOREIGN KEY (`product_id`)
    REFERENCES `dinamita`.`products` (`id`)
    ON DELETE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `dinamita`.`pages`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dinamita`.`pages` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` INT NOT NULL,
  `title` VARCHAR(255) NOT NULL,
  `excerpt` TEXT NULL DEFAULT NULL,
  `body` TEXT NULL DEFAULT NULL,
  `image` VARCHAR(255) NULL DEFAULT NULL,
  `slug` VARCHAR(255) NOT NULL,
  `meta_description` TEXT NULL DEFAULT NULL,
  `meta_keywords` TEXT NULL DEFAULT NULL,
  `status` ENUM('ACTIVE', 'INACTIVE') NOT NULL DEFAULT 'INACTIVE',
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `pages_slug_unique` (`slug` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `dinamita`.`permissions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dinamita`.`permissions` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` VARCHAR(255) NOT NULL,
  `table_name` VARCHAR(255) NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `permissions_key_index` (`key` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 62
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `dinamita`.`roles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dinamita`.`roles` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `display_name` VARCHAR(255) NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `roles_name_unique` (`name` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `dinamita`.`permission_role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dinamita`.`permission_role` (
  `permission_id` INT UNSIGNED NOT NULL,
  `role_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `role_id`),
  INDEX `permission_role_permission_id_index` (`permission_id` ASC) VISIBLE,
  INDEX `permission_role_role_id_index` (`role_id` ASC) VISIBLE,
  CONSTRAINT `permission_role_permission_id_foreign`
    FOREIGN KEY (`permission_id`)
    REFERENCES `dinamita`.`permissions` (`id`)
    ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign`
    FOREIGN KEY (`role_id`)
    REFERENCES `dinamita`.`roles` (`id`)
    ON DELETE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `dinamita`.`user_roles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dinamita`.`user_roles` (
  `user_id` INT UNSIGNED NOT NULL,
  `role_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`),
  INDEX `user_roles_user_id_index` (`user_id` ASC) VISIBLE,
  INDEX `user_roles_role_id_index` (`role_id` ASC) VISIBLE,
  CONSTRAINT `user_roles_role_id_foreign`
    FOREIGN KEY (`role_id`)
    REFERENCES `dinamita`.`roles` (`id`)
    ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign`
    FOREIGN KEY (`user_id`)
    REFERENCES `dinamita`.`users` (`id`)
    ON DELETE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
