CREATE TABLE `vhmml`.`sitemap_history` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `last_generated` TIMESTAMP NOT NULL,
  `last_generated_by` VARCHAR(100) NOT NULL,
  `status` VARCHAR(45) NOT NULL DEFAULT 'STARTED',
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC));
