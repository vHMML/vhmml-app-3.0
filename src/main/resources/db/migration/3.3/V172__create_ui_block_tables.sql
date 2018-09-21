CREATE TABLE `vhmml`.`blocks` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `display_name` VARCHAR(255) NOT NULL,
  `style_name` VARCHAR(255) NOT NULL,
  `section` VARCHAR(45) NOT NULL,
  `is_enabled` INT(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC));
 
INSERT INTO `vhmml`.`blocks` (`id`,`name`,`display_name`,`style_name`,`section`,`is_enabled`) VALUES (1, 'headerBlock', 'Header', 'header-block', 'HOMEPAGE', 1);
INSERT INTO `vhmml`.`blocks` (`id`,`name`,`display_name`,`style_name`,`section`,`is_enabled`) VALUES (2, 'textBar', 'Text Bar', 'text-bar', 'HOMEPAGE', 1);
INSERT INTO `vhmml`.`blocks` (`id`,`name`,`display_name`,`style_name`,`section`,`is_enabled`) VALUES (3, 'homepageBlockOne', 'Homepage Block 1', 'homepage-block-1', 'HOMEPAGE', 1);
INSERT INTO `vhmml`.`blocks` (`id`,`name`,`display_name`,`style_name`,`section`,`is_enabled`) VALUES (4, 'homepageBlockTwo', 'Homepage Block 2', 'homepage-block-2', 'HOMEPAGE', 1);
INSERT INTO `vhmml`.`blocks` (`id`,`name`,`display_name`,`style_name`,`section`,`is_enabled`) VALUES (5, 'homepageBlockThree', 'Homepage Block 3', 'homepage-block-3', 'HOMEPAGE', 1);
INSERT INTO `vhmml`.`blocks` (`id`,`name`,`display_name`,`style_name`,`section`,`is_enabled`) VALUES (6, 'homepageBlockFour', 'Homepage Block 4', 'homepage-block-4', 'HOMEPAGE', 1);
INSERT INTO `vhmml`.`blocks` (`id`,`name`,`display_name`,`style_name`,`section`,`is_enabled`) VALUES (7, 'homepageBlockFive', 'Homepage Block 5', 'homepage-block-5', 'HOMEPAGE', 1);
INSERT INTO `vhmml`.`blocks` (`id`,`name`,`display_name`,`style_name`,`section`,`is_enabled`) VALUES (8, 'homepageBlockSix', 'Homepage Block 6', 'homepage-block-6', 'HOMEPAGE', 1);
INSERT INTO `vhmml`.`blocks` (`id`,`name`, `display_name`, `style_name`, `section`, `is_enabled`) VALUES (9, 'newsHeaderBlock', 'News Header', 'news-header-block', 'NEWS', 1);
INSERT INTO `vhmml`.`blocks` (`id`,`name`, `display_name`, `style_name`, `section`, `is_enabled`) VALUES (10, 'newsContentBlock', 'News Content', 'news-content-block', 'NEWS', 1);


CREATE TABLE `vhmml`.`block_components` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `block_id` INT NOT NULL,
  `style_name` VARCHAR(255) NOT NULL,
  `type` VARCHAR(45) NOT NULL,
  `value` TEXT NULL,
  `is_enabled` INT(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  INDEX `_idx` (`block_id` ASC),
  CONSTRAINT `fk_block_blockcomponents`
    FOREIGN KEY (`block_id`)
    REFERENCES `vhmml`.`blocks` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('1', 'header-block-image-1', 'IMAGE', '', 0);
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('1', 'header-block-overlay-color', 'OVERLAYCOLOR', '#000000', 1);
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('1', 'header-block-overlay-opacity', 'OVERLAYOPACITY', '0', 1);
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('1', 'header-block-background-color', 'BACKGROUNDCOLOR', '#000000', 1);
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('1', 'header-block-url', 'URL', '', '1');

INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('2', 'text-bar-content', 'CONTENT', 'Online Resources for the Study of Manuscript Cultures', 1);
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('2', 'text-bar-content-color', 'CONTENTCOLOR', '#FFFFFF', 1);
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('2', 'text-bar-background-color', 'BACKGROUNDCOLOR', '#000000', 1);

INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `is_enabled`) VALUES ('3', 'homepage-block-1-image', 'IMAGE', '0');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('3', 'homepage-block-1-heading', 'HEADING', 'Reading Room', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('3', 'homepage-block-1-heading-color', 'HEADINGCOLOR', '#FFFFFF', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('3', 'homepage-block-1-content', 'CONTENT', 'Digital manuscripts from around the world.', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('3', 'homepage-block-1-content-color', 'CONTENTCOLOR', '#FFFFFF', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('3', 'homepage-block-1-hover-color', 'HOVERCOLOR', '#000000', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('3', 'homepage-block-1-overlay-color', 'OVERLAYCOLOR', '#000000', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('3', 'homepage-block-1-overlay-opacity', 'OVERLAYOPACITY', '0', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('3', 'homepage-block-1-background-color', 'BACKGROUNDCOLOR', '#000000', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('3', 'homepage-block-1-url', 'URL', '', '1');

INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `is_enabled`) VALUES ('4', 'homepage-block-2-image', 'IMAGE', '0');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('4', 'homepage-block-2-heading', 'HEADING', '', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('4', 'homepage-block-2-heading-color', 'HEADINGCOLOR', '#FFFFFF', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('4', 'homepage-block-2-content', 'CONTENT', '', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('4', 'homepage-block-2-content-color', 'CONTENTCOLOR', '#FFFFFF', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('4', 'homepage-block-2-hover-color', 'HOVERCOLOR', '#000000', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('4', 'homepage-block-2-overlay-color', 'OVERLAYCOLOR', '#000000', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('4', 'homepage-block-2-overlay-opacity', 'OVERLAYOPACITY', '0', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('4', 'homepage-block-2-background-color', 'BACKGROUNDCOLOR', '#000000', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('4', 'homepage-block-2-url', 'URL', '', '1');

INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `is_enabled`) VALUES ('5', 'homepage-block-3-image', 'IMAGE', '0');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('5', 'homepage-block-3-heading', 'HEADING', '', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('5', 'homepage-block-3-heading-color', 'HEADINGCOLOR', '#FFFFFF', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('5', 'homepage-block-3-content', 'CONTENT', '', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('5', 'homepage-block-3-content-color', 'CONTENTCOLOR', '#FFFFFF', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('5', 'homepage-block-3-hover-color', 'HOVERCOLOR', '#000000', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('5', 'homepage-block-3-overlay-color', 'OVERLAYCOLOR', '#000000', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('5', 'homepage-block-3-overlay-opacity', 'OVERLAYOPACITY', '0', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('5', 'homepage-block-3-background-color', 'BACKGROUNDCOLOR', '#343a40', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('5', 'homepage-block-3-url', 'URL', '', '1');

INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `is_enabled`) VALUES ('6', 'homepage-block-4-image', 'IMAGE', '0');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('6', 'homepage-block-4-heading', 'HEADING', '', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('6', 'homepage-block-4-heading-color', 'HEADINGCOLOR', '#FFFFFF', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('6', 'homepage-block-4-content', 'CONTENT', '', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('6', 'homepage-block-4-content-color', 'CONTENTCOLOR', '#FFFFFF', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('6', 'homepage-block-4-hover-color', 'HOVERCOLOR', '#000000', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('6', 'homepage-block-4-overlay-color', 'OVERLAYCOLOR', '#000000', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('6', 'homepage-block-4-overlay-opacity', 'OVERLAYOPACITY', '0', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('6', 'homepage-block-4-background-color', 'BACKGROUNDCOLOR', '#000000', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('6', 'homepage-block-4-url', 'URL', '', '1');

INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `is_enabled`) VALUES ('7', 'homepage-block-5-image', 'IMAGE', '0');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('7', 'homepage-block-5-heading', 'HEADING', '', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('7', 'homepage-block-5-heading-color', 'HEADINGCOLOR', '#FFFFFF', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('7', 'homepage-block-5-content', 'CONTENT', '', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('7', 'homepage-block-5-content-color', 'CONTENTCOLOR', '#FFFFFF', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('7', 'homepage-block-5-hover-color', 'HOVERCOLOR', '#000000', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('7', 'homepage-block-5-overlay-color', 'OVERLAYCOLOR', '#000000', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('7', 'homepage-block-5-overlay-opacity', 'OVERLAYOPACITY', '0', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('7', 'homepage-block-5-background-color', 'BACKGROUNDCOLOR', '#000000', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('7', 'homepage-block-5-url', 'URL', '', '1');

INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `is_enabled`) VALUES ('8', 'homepage-block-6-image', 'IMAGE', '0');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('8', 'homepage-block-6-heading', 'HEADING', '', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('8', 'homepage-block-6-heading-color', 'HEADINGCOLOR', '#FFFFFF', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('8', 'homepage-block-6-content', 'CONTENT', '', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('8', 'homepage-block-6-content-color', 'CONTENTCOLOR', '#FFFFFF', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('8', 'homepage-block-6-hover-color', 'HOVERCOLOR', '#000000', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('8', 'homepage-block-6-overlay-color', 'OVERLAYCOLOR', '#000000', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('8', 'homepage-block-6-overlay-opacity', 'OVERLAYOPACITY', '0', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('8', 'homepage-block-6-background-color', 'BACKGROUNDCOLOR', '#000000', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('8', 'homepage-block-8-url', 'URL', '', '1');

INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('9', 'news-header-block-image-1', 'IMAGE', '', '0');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('9', 'news-header-block-heading', 'HEADING', '', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('9', 'news-header-block-heading-color', 'HEADINGCOLOR', '#FFFFFF', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('9', 'news-header-block-content', 'CONTENT', '', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('9', 'news-header-block-content-color', 'CONTENTCOLOR', '#FFFFFF', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('9', 'news-header-block-overlay-color', 'OVERLAYCOLOR', '#000000', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('9', 'news-header-block-overlay-opacity', 'OVERLAYOPACITY', '0', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('9', 'news-header-block-background-color', 'BACKGROUNDCOLOR', '#000000', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('9', 'news-header-block-url', 'URL', '', '1');

INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('10', 'news-content-list-amount', 'LISTAMOUNT', '10', '1');
