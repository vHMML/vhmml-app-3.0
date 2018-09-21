CREATE TABLE `vhmml`.`news_items` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(500) NOT NULL,
  `content` TEXT NOT NULL,
  `tooltip` VARCHAR(250) NOT NULL,
  `date` DATETIME NOT NULL,
  `image` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC));
  
