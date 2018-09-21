CREATE TABLE `vhmml`.`sitemap_custom_urls` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `url` VARCHAR(255) NOT NULL,
  `priority` DOUBLE NOT NULL DEFAULT 0.5,
  `frequency` VARCHAR(45) NOT NULL DEFAULT 'weekly',
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC));

INSERT INTO `vhmml`.`sitemap_custom_urls` (url, priority) VALUES ('https://www.vhmml.org/', 1.0);
INSERT INTO `vhmml`.`sitemap_custom_urls` (url, priority) VALUES ('https://www.vhmml.org/readingRoom', 1.0);
INSERT INTO `vhmml`.`sitemap_custom_urls` (url) VALUES ('https://www.vhmml.org/lexicon');
INSERT INTO `vhmml`.`sitemap_custom_urls` (url) VALUES ('https://www.vhmml.org/folio');
INSERT INTO `vhmml`.`sitemap_custom_urls` (url) VALUES ('https://www.vhmml.org/school');
INSERT INTO `vhmml`.`sitemap_custom_urls` (url) VALUES ('https://www.vhmml.org/reference');

INSERT INTO `vhmml`.`sitemap_custom_urls` (url) VALUES ('https://www.vhmml.org/about');
INSERT INTO `vhmml`.`sitemap_custom_urls` (url) VALUES ('https://www.vhmml.org/terms');
INSERT INTO `vhmml`.`sitemap_custom_urls` (url) VALUES ('https://www.vhmml.org/privacy');
INSERT INTO `vhmml`.`sitemap_custom_urls` (url) VALUES ('https://www.vhmml.org/contact');