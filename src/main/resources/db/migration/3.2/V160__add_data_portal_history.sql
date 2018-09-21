CREATE TABLE `vhmml`.`data_portal_history` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `status` VARCHAR(45) NOT NULL,
  `start_datetime` TIMESTAMP NULL,
  `end_datetime` TIMESTAMP NULL,
  `total_time_ms` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC));